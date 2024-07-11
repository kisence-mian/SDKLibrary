.class final Lcom/anythink/nativead/splash/api/ATNativeSplash$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/splash/api/ATNativeSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    .line 93
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$2;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    const-string v1, "Ad load overtime!"

    invoke-interface {v0, v1}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onNoAdError(Ljava/lang/String;)V

    .line 96
    :cond_14
    return-void
.end method
