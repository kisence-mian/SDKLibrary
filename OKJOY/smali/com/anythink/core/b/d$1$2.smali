.class final Lcom/anythink/core/b/d$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/b/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 209
    iput-object p1, p0, Lcom/anythink/core/b/d$1$2;->b:Lcom/anythink/core/b/d$1;

    iput-object p2, p0, Lcom/anythink/core/b/d$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anythink/core/b/d$1$2;->b:Lcom/anythink/core/b/d$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$1;->c:Lcom/anythink/core/b/d$a;

    if-eqz v0, :cond_17

    .line 213
    const-string v0, "3002"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/anythink/core/b/d$1$2;->b:Lcom/anythink/core/b/d$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$1;->c:Lcom/anythink/core/b/d$a;

    invoke-interface {v1, v0}, Lcom/anythink/core/b/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 216
    :cond_17
    return-void
.end method
