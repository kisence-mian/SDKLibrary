.class Lcom/kwad/sdk/api/loader/k$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$b;->a(Lcom/kwad/sdk/api/loader/k$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/loader/k$c;

.field final synthetic b:Lcom/kwad/sdk/api/loader/k$b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$b;Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$b$1;->b:Lcom/kwad/sdk/api/loader/k$b;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/k$b$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/a$b;)V
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/kwad/sdk/api/loader/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$b$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/a$b;->c:Lcom/kwad/sdk/api/loader/a$a;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_10
    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$b$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UpdateData is illegal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    :goto_1c
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$b$1;->a:Lcom/kwad/sdk/api/loader/k$c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
