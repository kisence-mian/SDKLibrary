.class final Lcom/anythink/basead/e/h$2;
.super Lcom/anythink/basead/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/h;->c(Landroid/view/View;)V
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

    .line 296
    iput-object p1, p0, Lcom/anythink/basead/e/h$2;->a:Lcom/anythink/basead/e/h;

    invoke-direct {p0}, Lcom/anythink/basead/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 299
    iget-object v0, p0, Lcom/anythink/basead/e/h$2;->a:Lcom/anythink/basead/e/h;

    .line 1035
    nop

    .line 1322
    iget-boolean v1, v0, Lcom/anythink/basead/e/h;->f:Z

    if-nez v1, :cond_5a

    .line 1326
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/e/h;->f:Z

    .line 1327
    iget-object v1, v0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    instance-of v1, v1, Lcom/anythink/core/common/d/t;

    if-eqz v1, :cond_2b

    .line 1328
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v1

    iget-object v2, v0, Lcom/anythink/basead/e/h;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    iget-object v5, v0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v5, v5, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 1331
    :cond_2b
    iget-object v1, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    if-eqz v1, :cond_5a

    .line 1332
    new-instance v1, Lcom/anythink/basead/c/h;

    iget-object v2, v0, Lcom/anythink/basead/e/h;->h:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v2, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/OwnNativeAdView;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/anythink/basead/c/h;->f:I

    .line 1334
    iget-object v2, v0, Lcom/anythink/basead/e/h;->j:Lcom/anythink/basead/ui/OwnNativeAdView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/OwnNativeAdView;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/anythink/basead/c/h;->e:I

    .line 1335
    const/16 v2, 0x8

    iget-object v3, v0, Lcom/anythink/basead/e/h;->g:Lcom/anythink/core/common/d/u;

    invoke-static {v2, v3, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 1336
    iget-object v1, v0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    if-eqz v1, :cond_5a

    .line 1337
    iget-object v0, v0, Lcom/anythink/basead/e/h;->b:Lcom/anythink/basead/f/a;

    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 300
    :cond_5a
    return-void
.end method
