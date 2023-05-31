.class Lcom/kwad/sdk/b/d/g/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/g/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/a$a;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$a;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->a(Lcom/kwad/sdk/b/d/g/a;)Lcom/kwad/sdk/b/d/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/d/a;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$a;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->b(Lcom/kwad/sdk/b/d/g/a;)V

    return-void
.end method
