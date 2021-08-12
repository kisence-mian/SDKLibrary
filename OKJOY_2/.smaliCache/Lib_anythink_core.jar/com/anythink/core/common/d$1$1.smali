.class final Lcom/anythink/core/common/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d$1;Ljava/lang/String;)V
    .registers 3

    .line 211
    iput-object p1, p0, Lcom/anythink/core/common/d$1$1;->b:Lcom/anythink/core/common/d$1;

    iput-object p2, p0, Lcom/anythink/core/common/d$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 215
    const-string v0, "3002"

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/anythink/core/common/d$1$1;->b:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$1;->b:Lcom/anythink/core/common/d$1;

    iget-object v2, v2, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V

    .line 217
    return-void
.end method
