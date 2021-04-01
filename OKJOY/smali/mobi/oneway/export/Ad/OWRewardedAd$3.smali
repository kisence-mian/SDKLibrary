.class Lmobi/oneway/export/Ad/OWRewardedAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWRewardedAd;->setListener(Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

.field final synthetic b:Lmobi/oneway/export/Ad/OWRewardedAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWRewardedAd;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWRewardedAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->b:Lmobi/oneway/export/Ad/OWRewardedAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->b:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->a(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$3;->a:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method
