.class Lcom/kwad/sdk/core/preload/SplashPreloadManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/preload/SplashPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/kwad/sdk/core/preload/SplashPreloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;-><init>(Lcom/kwad/sdk/core/preload/SplashPreloadManager$1;)V

    sput-object v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$a;->a:Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    return-void
.end method

.method static synthetic a()Lcom/kwad/sdk/core/preload/SplashPreloadManager;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/preload/SplashPreloadManager$a;->a:Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    return-object v0
.end method
