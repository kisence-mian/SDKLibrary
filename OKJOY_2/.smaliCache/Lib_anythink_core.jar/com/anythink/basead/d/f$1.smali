.class final Lcom/anythink/basead/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/f;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/f;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/anythink/basead/d/f$1;->a:Lcom/anythink/basead/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->a:Lcom/anythink/basead/d/f;

    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->c()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method
