.class Lcom/tencent/smtt/sdk/ad$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/SslError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(Landroid/net/http/SslError;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ad$d;->a:Landroid/net/http/SslError;

    return-void
.end method


# virtual methods
.method public addError(I)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$d;->a:Landroid/net/http/SslError;

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->addError(I)Z

    move-result v0

    return v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$d;->a:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryError()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$d;->a:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    return v0
.end method

.method public hasError(I)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$d;->a:Landroid/net/http/SslError;

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    return v0
.end method
