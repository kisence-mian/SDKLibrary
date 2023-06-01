.class public Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

.field private b:Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

.field private c:Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

.field private d:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

.field private e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

.field private f:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c:Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttp;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_6} :catch_9

    const-string v0, ""

    goto :goto_12

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    :goto_12
    new-instance v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-direct {v1, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    const/4 v0, 0x1

    iput v0, v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->code:I

    const-string v0, "success"

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    iput-object p1, v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    goto :goto_3d

    :cond_29
    const/4 p1, -0x1

    iput p1, v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->code:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "The network request failed: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    :goto_3d
    return-object v1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/ssjj/fnsdk/core/http/b;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/http/b;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpResponseType<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->g:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/ssjj/fnsdk/core/http/c;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/http/c;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    return-object p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->f:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;

    return-object p0
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b:Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    return-object p0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    return-object p0
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->g:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;

    return-object p0
.end method


# virtual methods
.method public addFile(Ljava/io/File;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addFile(Ljava/io/File;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public addFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public addParam(Ljava/util/Map;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/util/Map;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public addParam(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public afterRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    return-object p0
.end method

.method public afterRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType<",
            "TN;>;)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b:Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b:Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c:Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c:Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->f:Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;

    return-object v0
.end method

.method public beforeRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c:Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    return-object p0
.end method

.method public connTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->connTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public exec(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/http/a;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/http/a;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public method(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->method(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public onResponse(Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    return-object p0
.end method

.method public onResponse(Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType<",
            "TT;>;)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->g:Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListenerType;

    return-object p0
.end method

.method public onStart(Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b:Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    return-object p0
.end method

.method public readTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->readTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->url(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object p0
.end method
