.class final Lcom/anythink/nativead/splash/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/splash/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/a;->a(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/core/b/c/m;

.field final synthetic c:Lcom/anythink/nativead/splash/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a;Landroid/view/ViewGroup;Lcom/anythink/core/b/c/m;)V
    .registers 4

    .prologue
    .line 99
    iput-object p1, p0, Lcom/anythink/nativead/splash/a$2;->c:Lcom/anythink/nativead/splash/a;

    iput-object p2, p0, Lcom/anythink/nativead/splash/a$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/anythink/nativead/splash/a$2;->b:Lcom/anythink/core/b/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 102
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/nativead/splash/a$2;->c:Lcom/anythink/nativead/splash/a;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/anythink/nativead/splash/a$2;->c:Lcom/anythink/nativead/splash/a;

    iget-object v0, p0, Lcom/anythink/nativead/splash/a$2;->b:Lcom/anythink/core/b/c/m;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/anythink/nativead/splash/a$2;->b:Lcom/anythink/core/b/c/m;

    iget-boolean v0, v0, Lcom/anythink/core/b/c/m;->f:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v1, v0}, Lcom/anythink/nativead/splash/a;->a(Lcom/anythink/nativead/splash/a;Z)V

    .line 104
    return-void

    .line 103
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method
