.class final Lcom/mintegral/msdk/base/common/net/f$c;
.super Ljava/lang/Object;
.source "CommonHttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/f$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/net/f;

.field private b:Lcom/mintegral/msdk/base/common/net/f$c$a;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/base/common/net/f;)V
    .registers 3

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/f$c;->a:Lcom/mintegral/msdk/base/common/net/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c;->b:Lcom/mintegral/msdk/base/common/net/f$c$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/base/common/net/f;B)V
    .registers 3

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/f$c;-><init>(Lcom/mintegral/msdk/base/common/net/f;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/base/common/net/f$c$a;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c;->b:Lcom/mintegral/msdk/base/common/net/f$c$a;

    return-object v0
.end method

.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 345
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 346
    if-nez v1, :cond_7

    .line 362
    :cond_6
    :goto_6
    return-void

    .line 350
    :cond_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_6

    .line 352
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 353
    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 354
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c;->b:Lcom/mintegral/msdk/base/common/net/f$c$a;

    if-nez v0, :cond_2e

    .line 355
    new-instance v0, Lcom/mintegral/msdk/base/common/net/f$c$a;

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/base/common/net/f$c$a;-><init>(Lcom/mintegral/msdk/base/common/net/f$c;Lorg/apache/http/HttpEntity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c;->b:Lcom/mintegral/msdk/base/common/net/f$c$a;

    .line 357
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c;->b:Lcom/mintegral/msdk/base/common/net/f$c$a;

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6

    .line 352
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
