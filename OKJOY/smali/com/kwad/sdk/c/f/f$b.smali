.class final Lcom/kwad/sdk/c/f/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/f/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/f/f;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/f/f$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/f/f;->c(J)V

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/f;->a(J)V

    return-void
.end method

.method public a(JLjava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->c()Lcom/kwad/sdk/c/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/f/f$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/f;->a(J)V

    return-void
.end method
