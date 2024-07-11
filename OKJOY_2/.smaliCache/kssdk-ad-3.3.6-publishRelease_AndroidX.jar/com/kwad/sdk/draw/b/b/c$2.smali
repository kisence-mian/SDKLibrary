.class Lcom/kwad/sdk/draw/b/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/draw/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$2;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/c$2;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b/c;->b(Lcom/kwad/sdk/draw/b/b/c;)Z

    move-result v0

    return v0
.end method
