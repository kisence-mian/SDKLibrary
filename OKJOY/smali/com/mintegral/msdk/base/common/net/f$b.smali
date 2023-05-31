.class final Lcom/mintegral/msdk/base/common/net/f$b;
.super Ljava/lang/Object;
.source "CommonHttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/net/f;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/common/net/f;)V
    .registers 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/f$b;->a:Lcom/mintegral/msdk/base/common/net/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/base/common/net/f;B)V
    .registers 3

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/f$b;-><init>(Lcom/mintegral/msdk/base/common/net/f;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    .prologue
    .line 325
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 326
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_f
    return-void
.end method
