.class Lcom/kwad/sdk/c/h/e/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/h/e/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/c$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/c$a$a;->a:Lcom/kwad/sdk/c/h/e/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c$a$a;->a:Lcom/kwad/sdk/c/h/e/c$a;

    iget-object v0, v0, Lcom/kwad/sdk/c/h/e/c$a;->a:Lcom/kwad/sdk/c/h/e/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/c;->e()V

    return-void
.end method
