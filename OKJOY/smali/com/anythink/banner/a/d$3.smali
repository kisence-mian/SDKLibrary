.class final Lcom/anythink/banner/a/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/d;->a(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/AdError;

.field final synthetic b:Lcom/anythink/banner/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/banner/a/d;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/anythink/banner/a/d$3;->b:Lcom/anythink/banner/a/d;

    iput-object p2, p0, Lcom/anythink/banner/a/d$3;->a:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/anythink/banner/a/d$3;->b:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, p0, Lcom/anythink/banner/a/d$3;->b:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    iget-object v1, p0, Lcom/anythink/banner/a/d$3;->b:Lcom/anythink/banner/a/d;

    invoke-static {v1}, Lcom/anythink/banner/a/d;->e(Lcom/anythink/banner/a/d;)Z

    move-result v1

    iget-object v2, p0, Lcom/anythink/banner/a/d$3;->a:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/a/c;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 123
    :cond_15
    return-void
.end method
