.class Lcom/kwad/sdk/api/loader/k$g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/SecurityChecker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$g$1;->a(Lcom/kwad/sdk/api/loader/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/loader/a$a;

.field final synthetic b:Lcom/kwad/sdk/api/loader/k$g$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$g$1;Lcom/kwad/sdk/api/loader/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->b:Lcom/kwad/sdk/api/loader/k$g$1;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->b:Lcom/kwad/sdk/api/loader/k$g$1;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$g$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(ZLcom/kwad/sdk/api/loader/SecurityChecker$State;)V
    .registers 6

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->b:Lcom/kwad/sdk/api/loader/k$g$1;

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/k$g$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    iget-object p2, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Object;)V

    goto :goto_32

    :cond_c
    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/a$a;->f:Ljava/io/File;

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V

    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$g$1$1;->b:Lcom/kwad/sdk/api/loader/k$g$1;

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/k$g$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security check failed. state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method
