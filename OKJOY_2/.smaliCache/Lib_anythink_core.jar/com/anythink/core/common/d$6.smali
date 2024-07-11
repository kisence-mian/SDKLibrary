.class final Lcom/anythink/core/common/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;)V
    .registers 2

    .line 1077
    iput-object p1, p0, Lcom/anythink/core/common/d$6;->a:Lcom/anythink/core/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1080
    iget-object v0, p0, Lcom/anythink/core/common/d$6;->a:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    if-eqz v0, :cond_12

    .line 1081
    iget-object v0, p0, Lcom/anythink/core/common/d$6;->a:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/e;->cancel()V

    .line 1082
    iget-object v0, p0, Lcom/anythink/core/common/d$6;->a:Lcom/anythink/core/common/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    .line 1084
    :cond_12
    return-void
.end method
