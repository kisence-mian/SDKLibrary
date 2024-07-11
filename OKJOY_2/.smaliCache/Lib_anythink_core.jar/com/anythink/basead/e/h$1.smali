.class final Lcom/anythink/basead/e/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/e/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/h;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    if-eqz v0, :cond_72

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->d:Lcom/anythink/basead/a/b;

    if-nez v0, :cond_25

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    new-instance v1, Lcom/anythink/basead/a/b;

    iget-object v2, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v2, v2, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v3, v3, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    invoke-direct {v1, p1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V

    iput-object v1, v0, Lcom/anythink/basead/e/h;->d:Lcom/anythink/basead/a/b;

    .line 61
    :cond_25
    iget-object p1, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object p1, p1, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    if-eqz p1, :cond_32

    .line 62
    iget-object p1, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object p1, p1, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    invoke-interface {p1}, Lcom/anythink/basead/f/a;->onAdClick()V

    .line 65
    :cond_32
    new-instance p1, Lcom/anythink/basead/c/h;

    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/OwnNativeAdView;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/anythink/basead/c/h;->f:I

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/OwnNativeAdView;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/anythink/basead/c/h;->e:I

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/OwnNativeAdView;->getAdClickRecord()Lcom/anythink/basead/c/b;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 70
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v1, v1, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    invoke-static {v0, v1, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/e/h$1;->a:Lcom/anythink/basead/e/h;

    iget-object v0, v0, Lcom/anythink/basead/e/h;->d:Lcom/anythink/basead/a/b;

    new-instance v1, Lcom/anythink/basead/e/h$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/e/h$1$1;-><init>(Lcom/anythink/basead/e/h$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 88
    :cond_72
    return-void
.end method
