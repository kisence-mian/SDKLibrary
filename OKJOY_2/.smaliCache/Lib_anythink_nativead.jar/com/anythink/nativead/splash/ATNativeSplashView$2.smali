.class final Lcom/anythink/nativead/splash/ATNativeSplashView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/splash/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/ATNativeSplashView;->renderAd(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/core/common/d/z;

.field final synthetic c:Lcom/anythink/nativead/splash/ATNativeSplashView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Landroid/view/ViewGroup;Lcom/anythink/core/common/d/z;)V
    .registers 4

    .line 106
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->c:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iput-object p2, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->b:Lcom/anythink/core/common/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->c:Lcom/anythink/nativead/splash/ATNativeSplashView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->c:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$2;->b:Lcom/anythink/core/common/d/z;

    if-eqz v1, :cond_19

    iget-boolean v1, v1, Lcom/anythink/core/common/d/z;->f:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-static {v0, v1}, Lcom/anythink/nativead/splash/ATNativeSplashView;->a(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V

    .line 111
    return-void
.end method
