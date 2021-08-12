.class Lcom/kwad/sdk/feed/widget/l$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l$10;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/l$10;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/l$10;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$10$1;->a:Lcom/kwad/sdk/feed/widget/l$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$10$1;->a:Lcom/kwad/sdk/feed/widget/l$10;

    iget-object v0, v0, Lcom/kwad/sdk/feed/widget/l$10;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->v(Lcom/kwad/sdk/feed/widget/l;)V

    return-void
.end method
