.class Lcom/kwad/sdk/feed/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/b/b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/b/b$b;->a:Lcom/kwad/sdk/feed/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/b$b;->a:Lcom/kwad/sdk/feed/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/feed/b/b;->d(Lcom/kwad/sdk/feed/b/b;)V

    return-void
.end method
