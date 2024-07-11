.class Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$3;
.super Ljava/lang/Object;
.source "IronSourcCash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;


# direct methods
.method constructor <init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    .line 210
    iput-object p1, p0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$3;->this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .registers 3
    .param p1, "impressionData"    # Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    .line 215
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$300()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_a

    .line 218
    :cond_7
    # invokes: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->appsflyerAdValue(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    invoke-static {p1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$400(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    .line 222
    :goto_a
    return-void
.end method
