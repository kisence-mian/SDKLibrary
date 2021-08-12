.class final Lcom/anythink/splashad/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/b;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_d

    .line 159
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 162
    return-void
.end method
