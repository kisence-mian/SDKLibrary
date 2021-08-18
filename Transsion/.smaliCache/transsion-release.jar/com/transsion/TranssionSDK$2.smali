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

    .line 180
    iput-object p1, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/gamepay/core/bean/ProductConfig;",
            ">;)V"
        }
    .end annotation

    .line 183
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

    .line 184
    iget-object v0, p0, Lcom/transsion/TranssionSDK$2;->this$0:Lcom/transsion/TranssionSDK;

    iput-object p1, v0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    .line 185
    return-void
.end method
