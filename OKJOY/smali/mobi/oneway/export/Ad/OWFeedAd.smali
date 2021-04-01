.class public Lmobi/oneway/export/Ad/OWFeedAd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lmobi/oneway/export/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmobi/oneway/export/a/b;

    invoke-direct {v0, p1, p2}, Lmobi/oneway/export/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWFeedAd;->a:Lmobi/oneway/export/a/b;

    return-void
.end method

.method static synthetic a(Lmobi/oneway/export/Ad/OWFeedAd;)Lmobi/oneway/export/a/b;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWFeedAd;->a:Lmobi/oneway/export/a/b;

    return-object v0
.end method


# virtual methods
.method public load(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
    .registers 4
    .param p1, "owFeedAdListener"    # Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    .prologue
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/Ad/OWFeedAd$1;

    invoke-direct {v1, p0, p1}, Lmobi/oneway/export/Ad/OWFeedAd$1;-><init>(Lmobi/oneway/export/Ad/OWFeedAd;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
