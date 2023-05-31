.class final Lcom/mintegral/msdk/base/common/net/f$c$a;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "CommonHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/net/f$c;

.field private b:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/common/net/f$c;Lorg/apache/http/HttpEntity;)V
    .registers 4

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->a:Lcom/mintegral/msdk/base/common/net/f$c;

    .line 378
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->b:Ljava/util/zip/GZIPInputStream;

    .line 379
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->b:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 400
    :goto_5
    return-void

    .line 398
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->b:Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_11

    .line 384
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->b:Ljava/util/zip/GZIPInputStream;

    .line 386
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/f$c$a;->b:Ljava/util/zip/GZIPInputStream;

    return-object v0
.end method

.method public final getContentLength()J
    .registers 3

    .prologue
    .line 391
    const-wide/16 v0, -0x1

    return-wide v0
.end method
