.class Lcom/loongcheer/LoogcheerSDK$4;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->ConsumptionGoods(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/LoogcheerSDK;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loongcheer/LoogcheerSDK;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/loongcheer/LoogcheerSDK;

    .line 256
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$4;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iput-object p2, p0, Lcom/loongcheer/LoogcheerSDK$4;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$4;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumptionGoods successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$4;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public successful()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$4;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumptionGoods successful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$4;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 260
    return-void
.end method
