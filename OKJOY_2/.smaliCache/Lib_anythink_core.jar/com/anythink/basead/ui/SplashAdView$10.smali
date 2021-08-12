.class final Lcom/anythink/basead/ui/SplashAdView$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SplashAdView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/SplashAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$10;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$10;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->e:Lcom/anythink/basead/ui/a;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/a;->a()V

    .line 444
    return-void
.end method
