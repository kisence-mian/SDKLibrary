.class Lcom/kwad/sdk/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kwad/sdk/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/a$1;->b:Lcom/kwad/sdk/a;

    iput-object p2, p0, Lcom/kwad/sdk/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u6b21\u83b7\u53d6Gid: initGId onFailed errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "errorMessage :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdPluginImpl"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a$1;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/kwad/sdk/core/b/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwad/sdk/a$1;->b:Lcom/kwad/sdk/a;

    iget-object v0, p0, Lcom/kwad/sdk/a$1;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/kwad/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
