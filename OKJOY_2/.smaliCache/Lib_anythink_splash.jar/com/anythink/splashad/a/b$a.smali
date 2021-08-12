.class final Lcom/anythink/splashad/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field final synthetic b:Lcom/anythink/splashad/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/anythink/splashad/a/b$a;->b:Lcom/anythink/splashad/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/anythink/splashad/a/b$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 285
    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .registers 3

    .line 294
    iget-object p1, p0, Lcom/anythink/splashad/a/b$a;->b:Lcom/anythink/splashad/a/b;

    iget-object v0, p0, Lcom/anythink/splashad/a/b$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {p1, v0}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 295
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 1

    .line 290
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 299
    iget-object v0, p0, Lcom/anythink/splashad/a/b$a;->b:Lcom/anythink/splashad/a/b;

    iget-object v1, p0, Lcom/anythink/splashad/a/b$a;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    const-string v2, "4001"

    invoke-static {v2, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 300
    return-void
.end method
