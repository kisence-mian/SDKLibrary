.class Lcom/kwad/sdk/nativead/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/e/g$a;

.field final synthetic b:Lcom/kwad/sdk/nativead/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/nativead/a$d;->b:Lcom/kwad/sdk/nativead/a;

    iput-object p2, p0, Lcom/kwad/sdk/nativead/a$d;->a:Lcom/kwad/sdk/e/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$d;->b:Lcom/kwad/sdk/nativead/a;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$d;->a:Lcom/kwad/sdk/e/g$a;

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V

    return-void
.end method
