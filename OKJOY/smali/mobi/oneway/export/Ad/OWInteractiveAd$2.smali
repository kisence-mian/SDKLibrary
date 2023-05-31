.class Lmobi/oneway/export/Ad/OWInteractiveAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInteractiveAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/Ad/OWInteractiveAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInteractiveAd;)V
    .registers 2
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInteractiveAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$2;->a:Lmobi/oneway/export/Ad/OWInteractiveAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInteractiveAd$2;->a:Lmobi/oneway/export/Ad/OWInteractiveAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInteractiveAd;->a(Lmobi/oneway/export/Ad/OWInteractiveAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/a/a;->a()V

    return-void
.end method
