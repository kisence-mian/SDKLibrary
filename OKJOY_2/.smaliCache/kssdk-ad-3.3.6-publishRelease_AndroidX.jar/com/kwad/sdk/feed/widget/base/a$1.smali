.class Lcom/kwad/sdk/feed/widget/base/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/feed/widget/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/base/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/base/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a$1;->a:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a$1;->a:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/a;->d()V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a$1;->a:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/a;->e()V

    :goto_d
    return-void
.end method
