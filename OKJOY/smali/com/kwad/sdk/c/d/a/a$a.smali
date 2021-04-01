.class Lcom/kwad/sdk/c/d/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/d/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/d/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/d/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/d/a/a$a;->a:Lcom/kwad/sdk/c/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/d/a/a$a;->a:Lcom/kwad/sdk/c/d/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/d/a/a;->c()V

    return-void
.end method
