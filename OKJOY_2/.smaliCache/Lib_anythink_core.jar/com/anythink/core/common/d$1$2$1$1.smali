.class final Lcom/anythink/core/common/d$1$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d$1$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/AdError;

.field final synthetic b:Lcom/anythink/core/common/d$1$2$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d$1$2$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 327
    iput-object p1, p0, Lcom/anythink/core/common/d$1$2$1$1;->b:Lcom/anythink/core/common/d$1$2$1;

    iput-object p2, p0, Lcom/anythink/core/common/d$1$2$1$1;->a:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/anythink/core/common/d$1$2$1$1;->b:Lcom/anythink/core/common/d$1$2$1;

    iget-object v0, v0, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v0, v0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v0, v0, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2$1$1;->b:Lcom/anythink/core/common/d$1$2$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2$1;->b:Lcom/anythink/core/common/d$1$2;

    iget-object v1, v1, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2$1$1;->a:Lcom/anythink/core/api/AdError;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V

    .line 331
    return-void
.end method
