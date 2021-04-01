.class Lmobi/oneway/export/Ad/OWSplashAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lmobi/oneway/export/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/AdListener/OWSplashAdListener;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lmobi/oneway/export/Ad/OWSplashAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWSplashAd;Lmobi/oneway/export/AdListener/OWSplashAdListener;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWSplashAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWSplashAd$2;->c:Lmobi/oneway/export/Ad/OWSplashAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWSplashAd$2;->a:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWSplashAd$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWSplashAd$2;->a:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->SHOW_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v2, "Show splash ad timeout"

    invoke-interface {v0, v1, v2}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWSplashAd$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->b(Ljava/lang/Runnable;)V

    return-void
.end method
