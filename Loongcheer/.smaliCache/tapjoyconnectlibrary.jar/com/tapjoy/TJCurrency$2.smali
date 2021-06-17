.class final Lcom/tapjoy/TJCurrency$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/tapjoy/TJCurrency;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCurrency;Ljava/util/Map;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/tapjoy/TJCurrency$2;->b:Lcom/tapjoy/TJCurrency;

    iput-object p2, p0, Lcom/tapjoy/TJCurrency$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 113
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "points/spend?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCurrency$2;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/tapjoy/TJCurrency$2;->b:Lcom/tapjoy/TJCurrency;

    invoke-static {v1, v0}, Lcom/tapjoy/TJCurrency;->b(Lcom/tapjoy/TJCurrency;Lcom/tapjoy/TapjoyHttpURLResponse;)V

    .line 117
    return-void
.end method
