.class final Lcom/anythink/network/ks/KSATDrawAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/KsDrawAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATDrawAd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATDrawAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATDrawAd;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/ks/KSATDrawAd$1;->a:Lcom/anythink/network/ks/KSATDrawAd;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATDrawAd;->notifyAdClicked()V

    .line 32
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method
