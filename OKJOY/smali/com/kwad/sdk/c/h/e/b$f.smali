.class Lcom/kwad/sdk/c/h/e/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$f;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$f;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0, p2}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;I)I

    return-void
.end method
