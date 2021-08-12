.class final Lcom/anythink/core/common/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/f;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/anythink/core/common/b/f$1;->a:Lcom/anythink/core/common/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/anythink/core/common/b/f$1;->a:Lcom/anythink/core/common/b/f;

    invoke-static {v0}, Lcom/anythink/core/common/b/f;->a(Lcom/anythink/core/common/b/f;)V

    .line 73
    return-void
.end method
