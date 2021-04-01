.class Lcom/kwad/sdk/b/f/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/f/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b$c;->a:Lcom/kwad/sdk/b/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$c;->a:Lcom/kwad/sdk/b/f/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/f/b;->a(Lcom/kwad/sdk/b/f/b;I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$c;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->h()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$c;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->e()V

    return-void
.end method
