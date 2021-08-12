.class Lcom/kwad/sdk/api/loader/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/api/loader/k$f<",
        "Lcom/kwad/sdk/api/loader/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/loader/k$c<",
            "Lcom/kwad/sdk/api/loader/a$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/loader/e;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/k$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/api/loader/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kwad/sdk/api/loader/k$b$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/api/loader/k$b$1;-><init>(Lcom/kwad/sdk/api/loader/k$b;Lcom/kwad/sdk/api/loader/k$c;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/loader/e;->a(Lcom/kwad/sdk/api/loader/e$a;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method
