.class final Lcom/anythink/banner/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/banner/a/d;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anythink/banner/a/d$2;->a:Lcom/anythink/banner/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/banner/a/d$2;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_13

    .line 109
    iget-object v0, p0, Lcom/anythink/banner/a/d$2;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    iget-object v1, p0, Lcom/anythink/banner/a/d$2;->a:Lcom/anythink/banner/a/d;

    invoke-static {v1}, Lcom/anythink/banner/a/d;->d(Lcom/anythink/banner/a/d;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/c;->onBannerLoaded(Z)V

    .line 111
    :cond_13
    return-void
.end method
