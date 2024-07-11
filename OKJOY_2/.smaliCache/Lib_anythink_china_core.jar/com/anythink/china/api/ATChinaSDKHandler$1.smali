.class Lcom/anythink/china/api/ATChinaSDKHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/api/ATChinaSDKHandler;->handleInitOaidSDK(Landroid/content/Context;Lcom/anythink/china/api/OaidSDKCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;


# direct methods
.method constructor <init>(Lcom/anythink/china/api/OaidSDKCallbackListener;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/china/api/ATChinaSDKHandler$1;->val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/anythink/china/api/ATChinaSDKHandler$1;->val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/anythink/china/api/OaidSDKCallbackListener;->OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V

    .line 34
    :cond_7
    return-void
.end method
