.class public Lmobi/oneway/export/Ad/OWSplashAd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lmobi/oneway/export/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmobi/oneway/export/a/c;

    invoke-direct {v0, p1}, Lmobi/oneway/export/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWSplashAd;->a:Lmobi/oneway/export/a/c;

    return-void
.end method

.method static synthetic a(Lmobi/oneway/export/Ad/OWSplashAd;)Lmobi/oneway/export/a/c;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWSplashAd;->a:Lmobi/oneway/export/a/c;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "owSplashAdListener"    # Lmobi/oneway/export/AdListener/OWSplashAdListener;

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmobi/oneway/export/Ad/OWSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "owSplashAdListener"    # Lmobi/oneway/export/AdListener/OWSplashAdListener;
    .param p4, "showTimeout"    # J

    .prologue
    new-instance v1, Lmobi/oneway/export/Ad/OWSplashAd$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lmobi/oneway/export/Ad/OWSplashAd$1;-><init>(Lmobi/oneway/export/Ad/OWSplashAd;Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lmobi/oneway/export/e/d;

    new-instance v2, Lmobi/oneway/export/Ad/OWSplashAd$2;

    invoke-direct {v2, p0, p3, v1}, Lmobi/oneway/export/Ad/OWSplashAd$2;-><init>(Lmobi/oneway/export/Ad/OWSplashAd;Lmobi/oneway/export/AdListener/OWSplashAdListener;Ljava/lang/Runnable;)V

    invoke-direct {v0, v2, p4, p5}, Lmobi/oneway/export/e/d;-><init>(Lmobi/oneway/export/e/d$a;J)V

    invoke-virtual {v0}, Lmobi/oneway/export/e/d;->start()V

    return-void
.end method
