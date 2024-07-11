.class Lcom/transsion/TranssionSDK$2;
.super Ljava/lang/Object;
.source "TranssionSDK.java"

# interfaces
.implements Lcom/transsion/gamepay/core/ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/TranssionSDK;->GetProductConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/TranssionSDK;


# direct methods
.method constructor <init>(Lcom/transsion/TranssionSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/transsion/TranssionSDK;

    .line 186
    iput-object p1, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/gamepay/core/bean/ProductConfig;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/gamepay/core/bean/ProductConfig;>;"
    iget-object v0, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transsion read config,count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iput-object p1, v0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/transsion/TranssionSDK;->priceDict:Ljava/util/HashMap;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v1, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v1, v1, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ad

    .line 196
    iget-object v1, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_Result  i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v4, v4, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v4, v4, Lcom/transsion/gamepay/core/bean/ProductConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v4, v4, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v4, v4, Lcom/transsion/gamepay/core/bean/ProductConfig;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v3, v3, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v3, v3, Lcom/transsion/gamepay/core/bean/ProductConfig;->amount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v1, v1, Lcom/transsion/TranssionSDK;->priceDict:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v2, v2, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v2, v2, Lcom/transsion/gamepay/core/bean/ProductConfig;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v3, v3, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v3, v3, Lcom/transsion/gamepay/core/bean/ProductConfig;->amount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a

    .line 200
    .end local v0    # "i":I
    :cond_ad
    return-void
.end method
