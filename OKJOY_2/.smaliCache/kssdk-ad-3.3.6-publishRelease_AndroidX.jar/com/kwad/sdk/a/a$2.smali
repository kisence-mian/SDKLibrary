.class Lcom/kwad/sdk/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/utils/o$a;

.field final synthetic b:Lcom/kwad/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/a/a$2;->b:Lcom/kwad/sdk/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/a/a$2;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/a$2;->b:Lcom/kwad/sdk/a/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/a$2;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/a/a;->a(Lcom/kwad/sdk/a/a;Landroid/view/View;Lcom/kwad/sdk/utils/o$a;)V

    return-void
.end method
