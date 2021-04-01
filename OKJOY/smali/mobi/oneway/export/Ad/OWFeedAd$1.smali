.class Lmobi/oneway/export/Ad/OWFeedAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWFeedAd;->load(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

.field final synthetic b:Lmobi/oneway/export/Ad/OWFeedAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWFeedAd;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWFeedAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWFeedAd$1;->b:Lmobi/oneway/export/Ad/OWFeedAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWFeedAd$1;->a:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWFeedAd$1;->b:Lmobi/oneway/export/Ad/OWFeedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWFeedAd;->a(Lmobi/oneway/export/Ad/OWFeedAd;)Lmobi/oneway/export/a/b;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWFeedAd$1;->a:Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/a/b;->a(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V

    return-void
.end method
