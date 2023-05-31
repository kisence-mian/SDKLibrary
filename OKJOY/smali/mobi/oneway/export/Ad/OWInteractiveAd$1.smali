.class Lmobi/oneway/export/Ad/OWInteractiveAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInteractiveAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

.field final synthetic c:Lmobi/oneway/export/Ad/OWInteractiveAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInteractiveAd;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
    .registers 4
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInteractiveAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->c:Lmobi/oneway/export/Ad/OWInteractiveAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->b:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->c:Lmobi/oneway/export/Ad/OWInteractiveAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInteractiveAd;->a(Lmobi/oneway/export/Ad/OWInteractiveAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$1;->b:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
