.class Lcom/tencent/smtt/sdk/af;
.super Lcom/tencent/smtt/export/external/interfaces/WebResourceError;


# instance fields
.field final synthetic a:Landroid/webkit/WebResourceError;

.field final synthetic b:Lcom/tencent/smtt/sdk/ad;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ad;Landroid/webkit/WebResourceError;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/af;->b:Lcom/tencent/smtt/sdk/ad;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/af;->a:Landroid/webkit/WebResourceError;

    invoke-direct {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceError;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/af;->a:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/af;->a:Landroid/webkit/WebResourceError;

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    return v0
.end method
