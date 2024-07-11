.class final Lcom/anythink/core/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATBiddingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c$b;

.field final synthetic b:Lcom/anythink/core/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a;Lcom/anythink/core/c/c$b;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/a;

    iput-object p2, p0, Lcom/anythink/core/b/a$1;->a:Lcom/anythink/core/c/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/a;

    iget-boolean v1, p1, Lcom/anythink/core/api/ATBiddingResult;->isSuccess:Z

    iget-object v2, p0, Lcom/anythink/core/b/a$1;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v0, v1, p1, v2}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/a;ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/c/c$b;)V

    .line 78
    return-void
.end method
