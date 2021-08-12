.class final Lcom/anythink/core/common/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 3

    .line 942
    iput-object p1, p0, Lcom/anythink/core/common/f$5;->b:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$5;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/anythink/core/common/f$5;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_7

    .line 946
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->destory()V

    .line 948
    :cond_7
    return-void
.end method
