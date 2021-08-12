.class final Lcom/anythink/core/common/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/g;

.field final synthetic b:Lcom/anythink/core/common/d/d;

.field final synthetic c:Lcom/anythink/core/api/AdError;

.field final synthetic d:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;Lcom/anythink/core/common/g;Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V
    .registers 5

    .line 833
    iput-object p1, p0, Lcom/anythink/core/common/d$3;->d:Lcom/anythink/core/common/d;

    iput-object p2, p0, Lcom/anythink/core/common/d$3;->a:Lcom/anythink/core/common/g;

    iput-object p3, p0, Lcom/anythink/core/common/d$3;->b:Lcom/anythink/core/common/d/d;

    iput-object p4, p0, Lcom/anythink/core/common/d$3;->c:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 836
    iget-object v0, p0, Lcom/anythink/core/common/d$3;->d:Lcom/anythink/core/common/d;

    iget-object v1, p0, Lcom/anythink/core/common/d$3;->a:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/d$3;->c:Lcom/anythink/core/api/AdError;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V

    .line 837
    return-void
.end method
