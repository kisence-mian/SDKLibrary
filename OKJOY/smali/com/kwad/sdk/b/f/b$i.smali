.class Lcom/kwad/sdk/b/f/b$i;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/f/b;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/b/f/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/f/b$i;->a:Lcom/kwad/sdk/b/f/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/b/f/b;Lcom/kwad/sdk/b/f/b$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/b$i;-><init>(Lcom/kwad/sdk/b/f/b;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$i;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$i;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->b()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$i;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/b$i;->a:Lcom/kwad/sdk/b/f/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->c()V

    return-void
.end method
