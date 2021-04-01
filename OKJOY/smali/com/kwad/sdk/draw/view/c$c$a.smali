.class Lcom/kwad/sdk/draw/view/c$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/draw/view/DrawVideoTailFrame$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/c$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/c$c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/c$c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c$c$a;->a:Lcom/kwad/sdk/draw/view/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$c$a;->a:Lcom/kwad/sdk/draw/view/c$c;

    iget-object v0, v0, Lcom/kwad/sdk/draw/view/c$c;->a:Lcom/kwad/sdk/draw/view/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/view/c;->a(Lcom/kwad/sdk/draw/view/c;I)V

    return-void
.end method
