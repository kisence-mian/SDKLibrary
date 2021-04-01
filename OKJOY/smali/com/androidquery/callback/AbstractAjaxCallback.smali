.class public abstract Lcom/androidquery/callback/AbstractAjaxCallback;
.super Ljava/lang/Object;
.source "AbstractAjaxCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AGENT:Ljava/lang/String; = null

.field private static final DEFAULT_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static GZIP:Z = false

.field private static NETWORK_POOL:I = 0x0

.field private static NET_TIMEOUT:I = 0x0

.field private static REUSE_CLIENT:Z = false

.field private static SIMULATE_ERROR:Z = false

.field private static final boundary:Ljava/lang/String; = "*****"

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient; = null

.field private static fetchExe:Ljava/util/concurrent/ExecutorService; = null

.field private static lastStatus:I = 0x0

.field private static final lineEnd:Ljava/lang/String; = "\r\n"

.field private static proxyHandle:Lcom/androidquery/callback/ProxyHandle; = null

.field private static ssf:Lorg/apache/http/conn/scheme/SocketFactory; = null

.field private static st:Lcom/androidquery/callback/Transformer; = null

.field private static final twoHyphens:Ljava/lang/String; = "--"


# instance fields
.field private abort:Z

.field private act:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected ah:Lcom/androidquery/auth/AccountHandle;

.field private blocked:Z

.field private cacheDir:Ljava/io/File;

.field private callback:Ljava/lang/String;

.field private completed:Z

.field protected cookies:Ljava/util/Map;
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

.field private encoding:Ljava/lang/String;

.field private expire:J

.field protected fileCache:Z

.field private handler:Ljava/lang/Object;

.field protected headers:Ljava/util/Map;
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

.field protected memCache:Z

.field private method:I

.field private networkUrl:Ljava/lang/String;

.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private policy:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/apache/http/HttpHost;

.field private reauth:Z

.field private redirect:Z

.field private refresh:Z

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private retry:I

.field protected status:Lcom/androidquery/callback/AjaxStatus;

.field private targetFile:Ljava/io/File;

.field private timeout:I

.field private transformer:Lcom/androidquery/callback/Transformer;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private uiCallback:Z

.field private url:Ljava/lang/String;

.field private whandler:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    const/16 v0, 0x7530

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    .line 117
    sput-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    .line 118
    sput-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->REUSE_CLIENT:Z

    .line 119
    sput-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->SIMULATE_ERROR:Z

    .line 563
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/androidquery/callback/AjaxStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    .line 1963
    const/16 v0, 0xc8

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    .line 2020
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    .line 147
    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    .line 148
    iput-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->redirect:Z

    .line 151
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 154
    const/4 v0, 0x4

    iput v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    .line 157
    iput-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 158
    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object v0
.end method

.method private afterWork()V
    .registers 3

    .prologue
    .line 1384
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    if-eqz v0, :cond_f

    .line 1385
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1388
    :cond_f
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 1389
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->clear()V

    .line 1390
    return-void
.end method

.method private backgroundWork()V
    .registers 2

    .prologue
    .line 1076
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    if-nez v0, :cond_b

    .line 1078
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_b

    .line 1079
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileWork()V

    .line 1083
    :cond_b
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_12

    .line 1084
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreWork()V

    .line 1087
    :cond_12
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 1088
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->networkWork()V

    .line 1092
    :cond_19
    return-void
.end method

.method public static cancel()V
    .registers 1

    .prologue
    .line 1443
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    .line 1444
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1445
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1448
    :cond_c
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearTasks()V

    .line 1449
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 167
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 169
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 170
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    .line 171
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 172
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    .line 173
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1885
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    .line 1887
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_b

    .line 1888
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1891
    .end local v0    # "o":Ljava/lang/Object;
    :cond_b
    const/4 v1, 0x0

    .line 1893
    .local v1, "p":Lcom/androidquery/util/Progress;
    if-eqz v0, :cond_13

    .line 1894
    new-instance v1, Lcom/androidquery/util/Progress;

    .end local v1    # "p":Lcom/androidquery/util/Progress;
    invoke-direct {v1, v0}, Lcom/androidquery/util/Progress;-><init>(Ljava/lang/Object;)V

    .line 1897
    .restart local v1    # "p":Lcom/androidquery/util/Progress;
    :cond_13
    invoke-static {p1, p2, p3, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    .line 1900
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/io/File;Ljava/io/File;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "max"    # I
    .param p4, "tempFile"    # Ljava/io/File;
    .param p5, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1840
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    if-nez p5, :cond_6

    .line 1841
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1870
    :goto_5
    return-void

    .line 1847
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1848
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1849
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 1853
    invoke-virtual {p4, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_5

    .line 1855
    :catch_13
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "copy failed, deleting files"

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1860
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1861
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    .line 1863
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1864
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1866
    throw v0
.end method

.method private correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 864
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v3, 0x0

    .line 867
    .local v3, "result":Ljava/lang/String;
    :try_start_1
    const-string v5, "utf-8"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 868
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 893
    :goto_e
    return-object v5

    .line 871
    :cond_f
    const-string v5, "Content-Type"

    invoke-virtual {p3, v5}, Lcom/androidquery/callback/AjaxStatus;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "header":Ljava/lang/String;
    const-string v5, "parsing header"

    invoke-static {v5, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 873
    if-eqz v2, :cond_2c

    .line 874
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_e

    .line 889
    .end local v2    # "header":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 890
    .local v1, "e":Ljava/lang/Exception;
    :goto_27
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a
    move-object v5, v3

    .line 893
    goto :goto_e

    .line 877
    .restart local v2    # "header":Ljava/lang/String;
    :cond_2c
    :try_start_2c
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_26

    .line 879
    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :try_start_33
    invoke-direct {p0, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "charset":Ljava/lang/String;
    const-string v5, "parsing needed"

    invoke-static {v5, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    if-eqz v0, :cond_5d

    const-string v5, "utf-8"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 884
    const-string v5, "correction needed"

    invoke-static {v5, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_50} :catch_5a

    .line 886
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :try_start_50
    const-string v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_26

    goto :goto_2a

    .line 889
    .end local v0    # "charset":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_5a
    move-exception v1

    move-object v3, v4

    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_27

    .end local v3    # "result":Ljava/lang/String;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_5d
    move-object v3, v4

    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_2a
.end method

.method private datastoreWork()V
    .registers 3

    .prologue
    .line 1136
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 1138
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 1139
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 1141
    :cond_16
    return-void
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 10
    .param p1, "hr"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v1, 0x0

    .line 1615
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1616
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 1618
    .local v2, "urlObj":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_34

    .line 1619
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1623
    .local v0, "host":Lorg/apache/http/HttpHost;
    :goto_2f
    invoke-virtual {p2, v0, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1629
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v2    # "urlObj":Ljava/net/URL;
    :goto_33
    return-object v1

    .line 1621
    .restart local v2    # "urlObj":Ljava/net/URL;
    :cond_34
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v0    # "host":Lorg/apache/http/HttpHost;
    goto :goto_2f

    .line 1625
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v2    # "urlObj":Ljava/net/URL;
    :cond_46
    invoke-virtual {p2, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_33
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1396
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    .line 1397
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1400
    :cond_c
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1401
    return-void
.end method

.method private static extractParams(Landroid/net/Uri;)Ljava/util/Map;
    .registers 11
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1296
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1297
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "pairs":[Ljava/lang/String;
    array-length v6, v1

    move v4, v5

    :goto_13
    if-lt v4, v6, :cond_16

    .line 1307
    return-object v2

    .line 1299
    :cond_16
    aget-object v0, v1, v4

    .line 1300
    .local v0, "pair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1301
    .local v3, "split":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2c

    .line 1302
    aget-object v7, v3, v5

    aget-object v8, v3, v9

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1303
    :cond_2c
    array-length v7, v3

    if-ne v7, v9, :cond_29

    .line 1304
    aget-object v7, v3, v5

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method private static extractUrl(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "fragment":Ljava/lang/String;
    if-eqz v0, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1291
    :cond_44
    return-object v1
.end method

.method private filePut()V
    .registers 6

    .prologue
    .line 1250
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v3, :cond_42

    .line 1252
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getData()[B

    move-result-object v0

    .line 1255
    .local v0, "data":[B
    if-eqz v0, :cond_2c

    :try_start_10
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 1257
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v2

    .line 1258
    .local v2, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getInvalid()Z

    move-result v3

    if-nez v3, :cond_33

    .line 1259
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_3d

    .line 1271
    .end local v2    # "file":Ljava/io/File;
    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    .line 1282
    .end local v0    # "data":[B
    :cond_32
    :goto_32
    return-void

    .line 1261
    .restart local v0    # "data":[B
    .restart local v2    # "file":Ljava/io/File;
    :cond_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1262
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_2c

    .line 1267
    .end local v2    # "file":Ljava/io/File;
    :catch_3d
    move-exception v1

    .line 1268
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 1272
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_42
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    const/16 v4, -0x67

    if-ne v3, v4, :cond_32

    .line 1274
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v2

    .line 1276
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1277
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1278
    const-string v3, "invalidated cache due to transform error"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    goto :goto_32
.end method

.method private fileWork()V
    .registers 7

    .prologue
    .line 1118
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1121
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_32

    .line 1123
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    .line 1124
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 1128
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v1, :cond_32

    .line 1129
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 1132
    :cond_32
    return-void
.end method

.method public static getActiveCount()I
    .registers 2

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1413
    .local v0, "result":I
    sget-object v1, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_f

    .line 1414
    sget-object v1, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    .line 1417
    :cond_f
    return v0
.end method

.method private getCacheUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1095
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_d

    .line 1096
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/AccountHandle;->getCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    goto :goto_c
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 836
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-string v2, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    .line 838
    .local v2, "pattern":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 839
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 841
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    .line 845
    :goto_12
    return-object v4

    .line 843
    :cond_13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "tag":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_12
.end method

.method private static getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 7

    .prologue
    .line 1581
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->REUSE_CLIENT:Z

    if-nez v3, :cond_60

    .line 1583
    :cond_8
    const-string v3, "creating http client"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1585
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1589
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    sget v3, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1590
    sget v3, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1593
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 1596
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1598
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1599
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1600
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v3, :cond_63

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    :goto_4c
    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1602
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1603
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1607
    :cond_60
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v3

    .line 1600
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    :cond_63
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    goto :goto_4c
.end method

.method private getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 4
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v1, 0x0

    .line 1828
    if-nez p1, :cond_4

    .line 1833
    :cond_3
    :goto_3
    return-object v1

    .line 1830
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 1831
    .local v0, "eheader":Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    .line 1833
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method protected static getLastStatus()I
    .registers 1

    .prologue
    .line 1965
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    return v0
.end method

.method private getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1103
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    move-object v0, p1

    .line 1105
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1106
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl:Ljava/lang/String;

    .line 1109
    :cond_7
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v1, :cond_11

    .line 1110
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v1, v0}, Lcom/androidquery/auth/AccountHandle;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :cond_11
    return-object v0
.end method

.method private getPreFile()Ljava/io/File;
    .registers 6

    .prologue
    .line 1215
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v2

    .line 1217
    .local v2, "pre":Z
    const/4 v3, 0x0

    .line 1219
    .local v3, "result":Ljava/io/File;
    if-eqz v2, :cond_d

    .line 1221
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile:Ljava/io/File;

    if-eqz v4, :cond_20

    .line 1222
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile:Ljava/io/File;

    .line 1233
    :cond_d
    :goto_d
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1236
    :try_start_15
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1237
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_38

    .line 1244
    .end local v3    # "result":Ljava/io/File;
    :cond_1f
    :goto_1f
    return-object v3

    .line 1223
    .restart local v3    # "result":Ljava/io/File;
    :cond_20
    iget-boolean v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v4, :cond_29

    .line 1224
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v3

    .line 1225
    goto :goto_d

    .line 1226
    :cond_29
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 1228
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    .line 1229
    :cond_31
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_d

    .line 1238
    .end local v0    # "dir":Ljava/io/File;
    :catch_38
    move-exception v1

    .line 1239
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 1240
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private httpDelete(Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-string v1, "get"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1471
    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1473
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v0, "del":Lorg/apache/http/client/methods/HttpDelete;
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1477
    return-void
.end method

.method private httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 38
    .param p1, "hr"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1641
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 1643
    .local v8, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->proxyHandle:Lcom/androidquery/callback/ProxyHandle;

    if-eqz v2, :cond_11

    .line 1644
    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->proxyHandle:Lcom/androidquery/callback/ProxyHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v8}, Lcom/androidquery/callback/ProxyHandle;->applyProxy(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 1647
    :cond_11
    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    if-eqz v2, :cond_f4

    .line 1648
    const-string v2, "User-Agent"

    sget-object v30, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_20
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-eqz v2, :cond_38

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_32
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_109

    .line 1661
    :cond_38
    sget-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    const-string v30, "Accept-Encoding"

    move-object/from16 v0, v30

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1662
    :cond_50
    const-string v2, "Accept-Encoding"

    const-string v30, "gzip"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v2, :cond_6c

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V

    .line 1669
    :cond_6c
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v11

    .line 1670
    .local v11, "cookie":Ljava/lang/String;
    if-eqz v11, :cond_79

    .line 1671
    const-string v2, "Cookie"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_79
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    .line 1679
    .local v21, "hp":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_92

    const-string v2, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1682
    :cond_92
    move-object/from16 v0, p0

    iget v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    if-lez v2, :cond_be

    .line 1683
    const-string v2, "http.connection.timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1684
    const-string v2, "http.socket.timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1687
    :cond_be
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->redirect:Z

    if-nez v2, :cond_cf

    .line 1688
    const-string v2, "http.protocol.handle-redirects"

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1691
    :cond_cf
    new-instance v10, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v10}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 1692
    .local v10, "context":Lorg/apache/http/protocol/HttpContext;
    new-instance v12, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v12}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 1693
    .local v12, "cookieStore":Lorg/apache/http/client/CookieStore;
    const-string v2, "http.cookie-store"

    invoke-interface {v10, v2, v12}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1695
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1697
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->abort:Z

    if-eqz v2, :cond_124

    .line 1698
    new-instance v2, Ljava/io/IOException;

    const-string v30, "Aborted"

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1649
    .end local v10    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v12    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v21    # "hp":Lorg/apache/http/params/HttpParams;
    :cond_f4
    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    if-nez v2, :cond_20

    sget-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    if-eqz v2, :cond_20

    .line 1650
    const-string v2, "User-Agent"

    const-string v30, "gzip"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 1655
    :cond_109
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1656
    .local v24, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 1701
    .end local v24    # "name":Ljava/lang/String;
    .restart local v10    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v12    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v21    # "hp":Lorg/apache/http/params/HttpParams;
    :cond_124
    sget-boolean v2, Lcom/androidquery/callback/AbstractAjaxCallback;->SIMULATE_ERROR:Z

    if-eqz v2, :cond_132

    .line 1702
    new-instance v2, Ljava/io/IOException;

    const-string v30, "Simulated Error"

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1705
    :cond_132
    const/16 v27, 0x0

    .line 1709
    .local v27, "response":Lorg/apache/http/HttpResponse;
    :try_start_134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v10}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_13b
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_134 .. :try_end_13b} :catch_1df

    move-result-object v27

    .line 1724
    :goto_13c
    const/4 v15, 0x0

    .line 1727
    .local v15, "data":[B
    move-object/from16 v26, p2

    .line 1729
    .local v26, "redirect":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 1730
    .local v9, "code":I
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v23

    .line 1731
    .local v23, "message":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1733
    .local v18, "error":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 1735
    .local v17, "entity":Lorg/apache/http/HttpEntity;
    const/4 v7, 0x0

    .line 1736
    .local v7, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 1738
    .local v6, "tempFile":Ljava/io/File;
    const/16 v2, 0xc8

    if-lt v9, v2, :cond_15f

    const/16 v2, 0x12c

    if-lt v9, v2, :cond_20e

    .line 1740
    :cond_15f
    const/4 v3, 0x0

    .line 1744
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v17, :cond_188

    .line 1746
    :try_start_162
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 1747
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v28

    .line 1749
    .local v28, "s":[B
    new-instance v19, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_17f} :catch_201
    .catchall {:try_start_162 .. :try_end_17f} :catchall_209

    .line 1751
    .end local v18    # "error":Ljava/lang/String;
    .local v19, "error":Ljava/lang/String;
    :try_start_17f
    const-string v2, "error"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_186} :catch_2d6
    .catchall {:try_start_17f .. :try_end_186} :catchall_2d1

    move-object/from16 v18, v19

    .line 1757
    .end local v19    # "error":Ljava/lang/String;
    .end local v28    # "s":[B
    .restart local v18    # "error":Ljava/lang/String;
    :cond_188
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1815
    :goto_18b
    const-string v2, "response"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1816
    if-eqz v15, :cond_1a2

    .line 1817
    array-length v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1820
    :cond_1a2
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    new-instance v30, Ljava/util/Date;

    invoke-direct/range {v30 .. v30}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/androidquery/callback/AjaxStatus;->context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v2

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/AjaxStatus;->headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;

    .line 1823
    return-void

    .line 1710
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "code":I
    .end local v15    # "data":[B
    .end local v17    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "error":Ljava/lang/String;
    .end local v23    # "message":Ljava/lang/String;
    .end local v26    # "redirect":Ljava/lang/String;
    :catch_1df
    move-exception v16

    .line 1713
    .local v16, "e":Lorg/apache/http/conn/HttpHostConnectException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_200

    .line 1714
    const-string v2, "proxy failed, retrying without proxy"

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1715
    const-string v2, "http.route.default-proxy"

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v10}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v27

    .line 1718
    goto/16 :goto_13c

    .line 1719
    :cond_200
    throw v16

    .line 1754
    .end local v16    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "code":I
    .restart local v15    # "data":[B
    .restart local v17    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "error":Ljava/lang/String;
    .restart local v23    # "message":Ljava/lang/String;
    .restart local v26    # "redirect":Ljava/lang/String;
    :catch_201
    move-exception v16

    .line 1755
    .local v16, "e":Ljava/lang/Exception;
    :goto_202
    :try_start_202
    invoke-static/range {v16 .. v16}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V
    :try_end_205
    .catchall {:try_start_202 .. :try_end_205} :catchall_209

    .line 1757
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_18b

    .line 1756
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_209
    move-exception v2

    .line 1757
    :goto_20a
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1758
    throw v2

    .line 1764
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_20e
    const-string v2, "http.target_host"

    invoke-interface {v10, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/HttpHost;

    .line 1765
    .local v13, "currentHost":Lorg/apache/http/HttpHost;
    const-string v2, "http.request"

    invoke-interface {v10, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1766
    .local v14, "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1768
    const/16 v2, 0x20

    const/high16 v30, 0x10000

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 1770
    .local v29, "size":I
    const/4 v4, 0x0

    .line 1771
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 1774
    .restart local v3    # "is":Ljava/io/InputStream;
    :try_start_254
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getPreFile()Ljava/io/File;

    move-result-object v7

    .line 1776
    if-nez v7, :cond_2a2

    .line 1777
    new-instance v25, Lcom/androidquery/util/PredefinedBAOS;

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/androidquery/util/PredefinedBAOS;-><init>(I)V

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v25, "os":Ljava/io/OutputStream;
    move-object/from16 v4, v25

    .line 1784
    .end local v25    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_265
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 1786
    const-string v2, "gzip"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    .line 1788
    .local v20, "gzip":Z
    if-eqz v20, :cond_284

    .line 1789
    new-instance v22, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "is":Ljava/io/InputStream;
    .local v22, "is":Ljava/io/InputStream;
    move-object/from16 v3, v22

    .line 1792
    .end local v22    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_284
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v5, v0

    .local v5, "contentLength":I
    move-object/from16 v2, p0

    .line 1796
    invoke-direct/range {v2 .. v7}, Lcom/androidquery/callback/AbstractAjaxCallback;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/io/File;Ljava/io/File;)V

    .line 1800
    if-nez v7, :cond_2b7

    .line 1801
    move-object v0, v4

    check-cast v0, Lcom/androidquery/util/PredefinedBAOS;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/androidquery/util/PredefinedBAOS;->toByteArray()[B
    :try_end_299
    .catchall {:try_start_254 .. :try_end_299} :catchall_2c9

    move-result-object v15

    .line 1809
    :cond_29a
    :goto_29a
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1810
    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto/16 :goto_18b

    .line 1780
    .end local v5    # "contentLength":I
    .end local v20    # "gzip":Z
    :cond_2a2
    :try_start_2a2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 1781
    new-instance v25, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v25    # "os":Ljava/io/OutputStream;
    move-object/from16 v4, v25

    .end local v25    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_265

    .line 1803
    .restart local v5    # "contentLength":I
    .restart local v20    # "gzip":Z
    :cond_2b7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c7

    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_2c0
    .catchall {:try_start_2a2 .. :try_end_2c0} :catchall_2c9

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v2, v30, v32

    if-nez v2, :cond_29a

    .line 1804
    :cond_2c7
    const/4 v7, 0x0

    .line 1808
    goto :goto_29a

    .end local v5    # "contentLength":I
    .end local v20    # "gzip":Z
    :catchall_2c9
    move-exception v2

    .line 1809
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1810
    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1811
    throw v2

    .line 1756
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v13    # "currentHost":Lorg/apache/http/HttpHost;
    .end local v14    # "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v18    # "error":Ljava/lang/String;
    .end local v29    # "size":I
    .restart local v19    # "error":Ljava/lang/String;
    .restart local v28    # "s":[B
    :catchall_2d1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "error":Ljava/lang/String;
    .restart local v18    # "error":Ljava/lang/String;
    goto/16 :goto_20a

    .line 1754
    .end local v18    # "error":Ljava/lang/String;
    .restart local v19    # "error":Ljava/lang/String;
    :catch_2d6
    move-exception v16

    move-object/from16 v18, v19

    .end local v19    # "error":Ljava/lang/String;
    .restart local v18    # "error":Ljava/lang/String;
    goto/16 :goto_202
.end method

.method private httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "req"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .param p4, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.expect-continue"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1506
    const/4 v1, 0x0

    .line 1508
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    const-string v4, "%entity"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1510
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/http/HttpEntity;

    if-eqz v4, :cond_36

    move-object v1, v3

    .line 1511
    check-cast v1, Lorg/apache/http/HttpEntity;

    .line 1528
    :goto_18
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    const-string v5, "Content-Type"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1529
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    :cond_2f
    invoke-virtual {p2, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1533
    invoke-direct {p0, p2, p1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1536
    return-void

    .line 1514
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_43
    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_51

    .line 1523
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_18

    .line 1516
    :cond_51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1517
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1518
    if-eqz v3, :cond_43

    .line 1519
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43
.end method

.method private httpGet(Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-string v1, "get"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1460
    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1462
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1466
    return-void
.end method

.method private httpMulti(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 21
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2036
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "multipart"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2038
    const/4 v2, 0x0

    .line 2039
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 2041
    .local v5, "dos":Ljava/io/DataOutputStream;
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v12, "u":Ljava/net/URL;
    const/4 v11, 0x0

    .line 2045
    .local v11, "py":Ljava/net/Proxy;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v13, :cond_12e

    .line 2046
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    invoke-static {v13, v14}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2047
    new-instance v11, Ljava/net/Proxy;

    .end local v11    # "py":Ljava/net/Proxy;
    sget-object v13, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v14, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v15}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v11, v13, v14}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 2052
    .restart local v11    # "py":Ljava/net/Proxy;
    :cond_3e
    :goto_3e
    if-nez v11, :cond_13c

    .line 2053
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2058
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    :goto_46
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2060
    sget v13, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    mul-int/lit8 v13, v13, 0x4

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2062
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2063
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2064
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2066
    const-string v13, "POST"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2067
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v13, "Content-Type"

    const-string v14, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-eqz v13, :cond_88

    .line 2071
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_82
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_144

    .line 2076
    :cond_88
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v3

    .line 2077
    .local v3, "cookie":Ljava/lang/String;
    if-eqz v3, :cond_93

    .line 2078
    const-string v13, "Cookie"

    invoke-virtual {v2, v13, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :cond_93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v13, :cond_a2

    .line 2082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v2}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/net/HttpURLConnection;)V

    .line 2086
    :cond_a2
    new-instance v5, Ljava/io/DataOutputStream;

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2088
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_159

    .line 2094
    const-string v13, "--*****--\r\n"

    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 2096
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 2100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2103
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 2105
    .local v1, "code":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 2107
    .local v9, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2109
    .local v4, "data":[B
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    .line 2110
    .local v6, "encoding":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2112
    .local v8, "error":Ljava/lang/String;
    const/16 v13, 0xc8

    if-lt v1, v13, :cond_dd

    const/16 v13, 0x12c

    if-lt v1, v13, :cond_16e

    .line 2114
    :cond_dd
    new-instance v8, Ljava/lang/String;

    .end local v8    # "error":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v8, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2116
    .restart local v8    # "error":Ljava/lang/String;
    const-string v13, "error"

    invoke-static {v13, v8}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2122
    :goto_f3
    const-string v13, "response"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2124
    if-eqz v4, :cond_108

    .line 2125
    array-length v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2128
    :cond_108
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    .line 2132
    return-void

    .line 2048
    .end local v1    # "code":I
    .end local v3    # "cookie":Ljava/lang/String;
    .end local v4    # "data":[B
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v8    # "error":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    :cond_12e
    sget-object v13, Lcom/androidquery/callback/AbstractAjaxCallback;->proxyHandle:Lcom/androidquery/callback/ProxyHandle;

    if-eqz v13, :cond_3e

    .line 2049
    sget-object v13, Lcom/androidquery/callback/AbstractAjaxCallback;->proxyHandle:Lcom/androidquery/callback/ProxyHandle;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/androidquery/callback/ProxyHandle;->makeProxy(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/net/Proxy;

    move-result-object v11

    goto/16 :goto_3e

    .line 2055
    :cond_13c
    invoke-virtual {v12, v11}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_46

    .line 2071
    :cond_144
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2072
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v2, v10, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 2088
    .end local v10    # "name":Ljava/lang/String;
    .restart local v3    # "cookie":Ljava/lang/String;
    :cond_159
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2090
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v5, v13, v15}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b3

    .line 2119
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "code":I
    .restart local v4    # "data":[B
    .restart local v6    # "encoding":Ljava/lang/String;
    .restart local v8    # "error":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_16e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v4

    goto/16 :goto_f3
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "post"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1483
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v0, "req":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1487
    return-void
.end method

.method private httpPut(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "put"

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1493
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v0, "req":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1497
    return-void
.end method

.method private isActive()Z
    .registers 4

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v1, 0x1

    .line 989
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_6

    .line 997
    :cond_5
    :goto_5
    return v1

    .line 991
    :cond_6
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 993
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 994
    :cond_16
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private static isMultiPart(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2025
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2031
    const/4 v2, 0x0

    :goto_f
    return v2

    .line 2025
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2026
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2027
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2028
    instance-of v3, v1, Ljava/io/File;

    if-nez v3, :cond_2d

    instance-of v3, v1, [B

    if-nez v3, :cond_2d

    instance-of v3, v1, Ljava/io/InputStream;

    if-eqz v3, :cond_8

    :cond_2d
    const/4 v2, 0x1

    goto :goto_f
.end method

.method private static makeAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "cred":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 492
    .local v2, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Basic "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v6}, Lcom/androidquery/util/AQUtility;->encode64([BII)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "auth":Ljava/lang/String;
    return-object v0
.end method

.method private makeCookie()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2203
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_e

    :cond_c
    const/4 v4, 0x0

    .line 2220
    :goto_d
    return-object v4

    .line 2205
    :cond_e
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2207
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2209
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_28

    .line 2220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 2210
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2211
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2212
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2216
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method private makeTempFile(Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1874
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v0, "temp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1877
    return-object v0
.end method

.method private network()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 1340
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 1343
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_1a

    .line 1344
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1345
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1346
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 1349
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1a
    invoke-direct {p0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1352
    const/4 v3, 0x2

    iget v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    if-ne v3, v4, :cond_29

    .line 1353
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDelete(Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1379
    :goto_28
    return-void

    .line 1354
    :cond_29
    const/4 v3, 0x3

    iget v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    if-ne v3, v4, :cond_34

    .line 1355
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPut(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_28

    .line 1358
    :cond_34
    const/4 v3, 0x1

    iget v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    if-ne v3, v4, :cond_40

    if-nez v0, :cond_40

    .line 1359
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1362
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_40
    if-nez v0, :cond_48

    .line 1363
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpGet(Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_28

    .line 1365
    :cond_48
    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isMultiPart(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1366
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpMulti(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_28

    .line 1368
    :cond_54
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPost(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_28
.end method

.method private network(I)V
    .registers 5
    .param p1, "attempts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v2, 0x1

    if-gt p1, v2, :cond_7

    .line 1314
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    .line 1334
    :cond_6
    :goto_6
    return-void

    .line 1318
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_6

    .line 1321
    :try_start_a
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_6

    .line 1323
    :catch_e
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_14

    .line 1325
    throw v0

    .line 1318
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private networkWork()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/16 v5, -0x65

    .line 1146
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 1147
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3, v5}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 1202
    :goto_f
    return-void

    .line 1152
    :cond_10
    const/4 v0, 0x0

    .line 1156
    .local v0, "data":[B
    :try_start_11
    iget v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->network(I)V

    .line 1158
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3, p0, v4}, Lcom/androidquery/auth/AccountHandle;->expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-boolean v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    if-nez v3, :cond_43

    .line 1159
    const-string v3, "reauth needed"

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1160
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    .line 1161
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v3, p0}, Lcom/androidquery/auth/AccountHandle;->reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1162
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    .line 1169
    :cond_43
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getData()[B
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_48} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_a7

    move-result-object v0

    .line 1191
    :goto_49
    :try_start_49
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v3, v0, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_b7

    .line 1196
    :goto_53
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v3, :cond_66

    if-eqz v0, :cond_66

    .line 1197
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v4, -0x67

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    const-string v4, "transform error"

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 1200
    :cond_66
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    sput v3, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    .line 1201
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_f

    .line 1164
    :cond_74
    :try_start_74
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_a7

    goto :goto_f

    .line 1171
    :catch_7b
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "IOException"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1177
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_9b

    const-string v3, "No authentication challenges found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1179
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v4, 0x191

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    goto :goto_49

    .line 1181
    :cond_9b
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3, v5}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    const-string v4, "network error"

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    goto :goto_49

    .line 1184
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "message":Ljava/lang/String;
    :catch_a7
    move-exception v1

    .line 1185
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 1186
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3, v5}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    const-string v4, "network error"

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    goto :goto_49

    .line 1192
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v1

    .line 1193
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method private parseCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 850
    if-nez p1, :cond_5

    .line 858
    :cond_4
    :goto_4
    return-object v0

    .line 851
    :cond_5
    const-string v3, "charset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 852
    .local v2, "i":I
    if-eq v2, v4, :cond_4

    .line 854
    const-string v3, ";"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 855
    .local v1, "e":I
    if-ne v1, v4, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 857
    :cond_19
    add-int/lit8 v3, v2, 0x7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^\\w-]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "charset":Ljava/lang/String;
    goto :goto_4
.end method

.method private static patchUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1453
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1454
    return-object p0
.end method

.method private self()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    return-object p0
.end method

.method public static setAgent(Ljava/lang/String;)V
    .registers 1
    .param p0, "agent"    # Ljava/lang/String;

    .prologue
    .line 190
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static setGZip(Z)V
    .registers 1
    .param p0, "gzip"    # Z

    .prologue
    .line 199
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    .line 200
    return-void
.end method

.method public static setNetworkLimit(I)V
    .registers 3
    .param p0, "limit"    # I

    .prologue
    .line 1428
    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    .line 1429
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1431
    const-string v0, "setting network limit"

    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1432
    return-void
.end method

.method public static setProxyHandle(Lcom/androidquery/callback/ProxyHandle;)V
    .registers 1
    .param p0, "handle"    # Lcom/androidquery/callback/ProxyHandle;

    .prologue
    .line 1635
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxyHandle:Lcom/androidquery/callback/ProxyHandle;

    .line 1636
    return-void
.end method

.method public static setReuseHttpClient(Z)V
    .registers 2
    .param p0, "reuse"    # Z

    .prologue
    .line 1555
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->REUSE_CLIENT:Z

    .line 1556
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1558
    return-void
.end method

.method public static setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .registers 2
    .param p0, "sf"    # Lorg/apache/http/conn/scheme/SocketFactory;

    .prologue
    .line 1549
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 1550
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1551
    return-void
.end method

.method public static setSimulateError(Z)V
    .registers 1
    .param p0, "error"    # Z

    .prologue
    .line 208
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->SIMULATE_ERROR:Z

    .line 209
    return-void
.end method

.method public static setTimeout(I)V
    .registers 1
    .param p0, "timeout"    # I

    .prologue
    .line 181
    sput p0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 182
    return-void
.end method

.method public static setTransformer(Lcom/androidquery/callback/Transformer;)V
    .registers 1
    .param p0, "transformer"    # Lcom/androidquery/callback/Transformer;

    .prologue
    .line 223
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    .line 224
    return-void
.end method

.method private toData(Ljava/lang/String;Ljava/io/InputStream;)[B
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2136
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-string v2, "gzip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2138
    .local v0, "gzip":Z
    if-eqz v0, :cond_e

    .line 2139
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p2, v1

    .line 2142
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p2    # "is":Ljava/io/InputStream;
    :cond_e
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    return-object v2
.end method

.method private wake()V
    .registers 2

    .prologue
    .line 603
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    if-nez v0, :cond_5

    .line 612
    :goto_4
    return-void

    .line 605
    :cond_5
    monitor-enter p0

    .line 607
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_e
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    .line 605
    :goto_9
    :try_start_9
    monitor-exit p0

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_b

    throw v0

    .line 608
    :catch_e
    move-exception v0

    goto :goto_9
.end method

.method private work(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1021
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1023
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_18

    .line 1024
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 1025
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 1026
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 1032
    :goto_17
    return-void

    .line 1029
    :cond_18
    iget v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    invoke-static {p1, v1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    .line 1030
    invoke-static {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Ljava/lang/Runnable;)V

    goto :goto_17
.end method

.method private static writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2168
    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2170
    const-string v1, " filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2174
    const-string v0, "Content-Type: application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2175
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2176
    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2177
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2179
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2181
    invoke-static {p3, p0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2183
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2189
    const-string v1, "--*****\r\n"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2191
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2192
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2194
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2195
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2197
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2148
    if-nez p2, :cond_3

    .line 2163
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_2
    return-void

    .line 2150
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/io/File;

    if-eqz v1, :cond_17

    move-object v0, p2

    .line 2152
    check-cast v0, Ljava/io/File;

    .line 2153
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_2

    .line 2155
    .end local v0    # "file":Ljava/io/File;
    :cond_17
    instance-of v1, p2, [B

    if-eqz v1, :cond_26

    .line 2156
    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, p1, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_2

    .line 2157
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_26
    instance-of v1, p2, Ljava/io/InputStream;

    if-eqz v1, :cond_30

    .line 2158
    check-cast p2, Ljava/io/InputStream;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_2

    .line 2160
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_30
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 2010
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->abort:Z

    .line 2012
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2013
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 2016
    :cond_14
    return-void
.end method

.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 916
    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    move-object v2, v3

    .line 927
    :cond_a
    :goto_a
    return-object v2

    .line 918
    :cond_b
    invoke-static {p1, p2}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 920
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_a

    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 922
    .local v0, "diff":J
    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_a

    move-object v2, v3

    .line 923
    goto :goto_a
.end method

.method public async(Landroid/app/Activity;)V
    .registers 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 940
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 941
    const-string v0, "Warning"

    const-string v1, "Possible memory leak. Calling ajax with a terminated activity."

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 944
    :cond_d
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    if-nez v0, :cond_19

    .line 945
    const-string v0, "Warning"

    const-string v1, "type() is not called with response type."

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 952
    :goto_18
    return-void

    .line 949
    :cond_19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    .line 950
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_18
.end method

.method public async(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 963
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-nez v0, :cond_35

    .line 964
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 965
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->refresh(Z)Lcom/androidquery/callback/AjaxStatus;

    .line 971
    :cond_18
    :goto_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 973
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_46

    .line 975
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0}, Lcom/androidquery/auth/AccountHandle;->authenticated()Z

    move-result v0

    if-nez v0, :cond_46

    .line 976
    const-string v0, "auth needed"

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0, p0}, Lcom/androidquery/auth/AccountHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    .line 984
    :goto_34
    return-void

    .line 966
    :cond_35
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 967
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->reset()Lcom/androidquery/callback/AjaxStatus;

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    goto :goto_18

    .line 982
    :cond_46
    invoke-direct {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->work(Landroid/content/Context;)V

    goto :goto_34
.end method

.method public auth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 1913
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    const-string v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1914
    new-instance v0, Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/androidquery/auth/GoogleHandle;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1917
    :cond_14
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;
    .registers 3
    .param p1, "handle"    # Lcom/androidquery/auth/AccountHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 1929
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1930
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public block()V
    .registers 3

    .prologue
    .line 625
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_e
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    if-eqz v0, :cond_13

    .line 640
    :goto_12
    return-void

    .line 632
    :cond_13
    :try_start_13
    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_24

    .line 633
    const/4 v0, 0x1

    :try_start_15
    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    .line 635
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 632
    monitor-exit p0

    goto :goto_12

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_24} :catch_24

    .line 637
    :catch_24
    move-exception v0

    goto :goto_12
.end method

.method protected cacheAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1036
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method callback()V
    .registers 11

    .prologue
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 568
    invoke-virtual {p0, v8}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 570
    iput-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    .line 572
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 574
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 575
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getHandler()Ljava/lang/Object;

    move-result-object v0

    .line 576
    .local v0, "handler":Ljava/lang/Object;
    new-array v4, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Lcom/androidquery/callback/AjaxStatus;

    aput-object v1, v4, v9

    .line 577
    .local v4, "AJAX_SIG":[Ljava/lang/Class;
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    sget-object v5, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    aput-object v3, v6, v8

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    aput-object v3, v6, v2

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    aput-object v3, v6, v9

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .end local v0    # "handler":Ljava/lang/Object;
    .end local v4    # "AJAX_SIG":[Ljava/lang/Class;
    :goto_3b
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut()V

    .line 593
    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    if-nez v1, :cond_47

    .line 594
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->close()V

    .line 597
    :cond_47
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->wake()V

    .line 598
    invoke-static {}, Lcom/androidquery/util/AQUtility;->debugNotify()V

    .line 599
    return-void

    .line 580
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_58

    goto :goto_3b

    .line 581
    :catch_58
    move-exception v7

    .line 582
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 587
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5d
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_3b
.end method

.method public callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    .line 439
    :cond_b
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cookies(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    .line 452
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected datastoreGet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public encoding(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public expire(J)Ljava/lang/Object;
    .registers 4
    .param p1, "expire"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-wide p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    .line 398
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public failure(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1004
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_18

    .line 1005
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 1007
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    if-eqz v0, :cond_19

    .line 1008
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 1016
    :cond_18
    :goto_18
    return-void

    .line 1010
    :cond_19
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_18
.end method

.method public fileCache(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    .line 348
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    .line 663
    .local v0, "data":[B
    :try_start_1
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 664
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    .line 669
    :goto_a
    invoke-virtual {p0, p1, v0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v2

    .line 672
    :goto_e
    return-object v2

    .line 666
    :cond_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_a

    .line 670
    :catch_19
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 672
    const/4 v2, 0x0

    goto :goto_e
.end method

.method protected filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_4

    if-nez p4, :cond_5

    .line 912
    :cond_4
    :goto_4
    return-void

    .line 910
    :cond_5
    const-wide/16 v0, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/androidquery/util/AQUtility;->storeAsync(Ljava/io/File;[BJ)V

    goto :goto_4
.end method

.method protected getCacheFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1205
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1959
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1995
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1948
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 1950
    :goto_6
    return-object v0

    .line 1949
    :cond_7
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    .line 1950
    :cond_d
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/androidquery/callback/AjaxStatus;
    .registers 2

    .prologue
    .line 1986
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1939
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 260
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 262
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    .line 412
    :cond_b
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    .line 425
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isStreamingContent()Z
    .registers 3

    .prologue
    .line 1210
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-class v0, Lcom/androidquery/util/XmlDom;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public memCache(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    .line 360
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected memGet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public method(I)Ljava/lang/Object;
    .registers 3
    .param p1, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    .line 298
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public networkUrl(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 519
    :cond_b
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 533
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public policy(I)Ljava/lang/Object;
    .registers 3
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    .line 365
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/app/Dialog;)Ljava/lang/Object;
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "progress"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    if-eqz p1, :cond_9

    .line 558
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 560
    :cond_9
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public proxy(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    .line 472
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 479
    invoke-static {p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "authHeader":Ljava/lang/String;
    const-string v1, "proxy auth"

    invoke-static {v1, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public redirect(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "redirect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->redirect:Z

    .line 315
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    .line 376
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public retry(I)Ljava/lang/Object;
    .registers 3
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    .line 320
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1048
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1051
    :try_start_8
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->backgroundWork()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_1b

    .line 1057
    :goto_b
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getReauth()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1059
    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    if-eqz v1, :cond_2b

    .line 1060
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 1072
    :cond_1a
    :goto_1a
    return-void

    .line 1052
    :catch_1b
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 1054
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v2, -0x65

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_b

    .line 1062
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2b
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1a

    .line 1066
    :cond_2f
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1a
.end method

.method protected showProgress(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 684
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 686
    .local v0, "p":Ljava/lang/Object;
    :goto_5
    if-eqz v0, :cond_12

    .line 688
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 689
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 701
    :cond_12
    :goto_12
    return-void

    .line 684
    .end local v0    # "p":Ljava/lang/Object;
    :cond_13
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 691
    .restart local v0    # "p":Ljava/lang/Object;
    :cond_1a
    new-instance v1, Lcom/androidquery/callback/AbstractAjaxCallback$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback$1;-><init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    goto :goto_12
.end method

.method protected skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public targetFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile:Ljava/io/File;

    .line 501
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public timeout(I)Ljava/lang/Object;
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    .line 303
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 21
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    if-nez v3, :cond_8

    .line 707
    const/4 v13, 0x0

    .line 830
    :goto_7
    return-object v13

    .line 710
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v10

    .line 712
    .local v10, "file":Ljava/io/File;
    if-eqz p2, :cond_10f

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 715
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_7

    .line 718
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 720
    const/4 v13, 0x0

    .line 721
    .local v13, "result":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 723
    .local v15, "str":Ljava/lang/String;
    :try_start_33
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_52

    .line 724
    .end local v15    # "str":Ljava/lang/String;
    .local v16, "str":Ljava/lang/String;
    :try_start_40
    new-instance v3, Lorg/json/JSONTokener;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v13, v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_197

    move-object/from16 v15, v16

    .line 725
    .end local v16    # "str":Ljava/lang/String;
    .restart local v15    # "str":Ljava/lang/String;
    goto :goto_7

    :catch_52
    move-exception v9

    .line 726
    .local v9, "e":Ljava/lang/Exception;
    :goto_53
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 727
    invoke-static {v15}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    goto :goto_7

    .line 732
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Lorg/json/JSONObject;
    .end local v15    # "str":Ljava/lang/String;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 734
    const/4 v13, 0x0

    .line 737
    .local v13, "result":Lorg/json/JSONArray;
    :try_start_67
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v15, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 738
    .restart local v15    # "str":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v13, v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_7

    .line 739
    .end local v15    # "str":Ljava/lang/String;
    :catch_80
    move-exception v9

    .line 740
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 745
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Lorg/json/JSONArray;
    :cond_85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 747
    const/4 v13, 0x0

    .line 749
    .local v13, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ae

    .line 750
    const-string v3, "network"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;

    move-result-object v13

    .line 752
    goto/16 :goto_7

    .line 753
    :cond_ae
    const-string v3, "file"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 755
    :try_start_b3
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_be} :catch_c1

    .end local v13    # "result":Ljava/lang/String;
    .local v14, "result":Ljava/lang/String;
    move-object v13, v14

    .line 756
    .end local v14    # "result":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    goto/16 :goto_7

    :catch_c1
    move-exception v9

    .line 757
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 765
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Ljava/lang/String;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, [B

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    move-object/from16 v13, p2

    .line 766
    goto/16 :goto_7

    .line 770
    :cond_d7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    if-eqz v3, :cond_f5

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_7

    .line 774
    :cond_f5
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    if-eqz v3, :cond_191

    .line 775
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_7

    .line 778
    :cond_10f
    if-eqz v10, :cond_191

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    move-object v13, v10

    .line 781
    goto/16 :goto_7

    .line 784
    :cond_120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Lcom/androidquery/util/XmlDom;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 786
    const/4 v13, 0x0

    .line 789
    .local v13, "result":Lcom/androidquery/util/XmlDom;
    :try_start_12d
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 790
    .local v11, "fis":Ljava/io/FileInputStream;
    new-instance v14, Lcom/androidquery/util/XmlDom;

    invoke-direct {v14, v11}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_137} :catch_13f

    .line 791
    .end local v13    # "result":Lcom/androidquery/util/XmlDom;
    .local v14, "result":Lcom/androidquery/util/XmlDom;
    :try_start_137
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13c} :catch_194

    move-object v13, v14

    .line 797
    goto/16 :goto_7

    .line 792
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "result":Lcom/androidquery/util/XmlDom;
    .restart local v13    # "result":Lcom/androidquery/util/XmlDom;
    :catch_13f
    move-exception v9

    .line 793
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_140
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 794
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 800
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "result":Lcom/androidquery/util/XmlDom;
    :cond_146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 802
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 805
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_156
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 806
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-interface {v12, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_167} :catch_16a

    move-object v13, v12

    .line 812
    goto/16 :goto_7

    .line 808
    .end local v11    # "fis":Ljava/io/FileInputStream;
    :catch_16a
    move-exception v9

    .line 809
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 810
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 815
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 817
    :try_start_17d
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 818
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_187} :catch_18a

    move-object v13, v11

    .line 819
    goto/16 :goto_7

    .line 820
    .end local v11    # "fis":Ljava/io/FileInputStream;
    :catch_18a
    move-exception v9

    .line 821
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 822
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 830
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_191
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 792
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "result":Lcom/androidquery/util/XmlDom;
    :catch_194
    move-exception v9

    move-object v13, v14

    .end local v14    # "result":Lcom/androidquery/util/XmlDom;
    .restart local v13    # "result":Lcom/androidquery/util/XmlDom;
    goto :goto_140

    .line 725
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v13, "result":Lorg/json/JSONObject;
    .restart local v16    # "str":Ljava/lang/String;
    :catch_197
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/lang/String;
    .restart local v15    # "str":Ljava/lang/String;
    goto/16 :goto_53
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;
    .registers 3
    .param p1, "transformer"    # Lcom/androidquery/callback/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    .line 337
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TK;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    .line 293
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uiCallback(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "uiCallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 387
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 246
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 248
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
