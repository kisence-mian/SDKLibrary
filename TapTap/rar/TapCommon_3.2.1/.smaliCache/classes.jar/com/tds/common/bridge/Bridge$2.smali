.class Lcom/tds/common/bridge/Bridge$2;
.super Ljava/lang/Object;
.source "Bridge.java"

# interfaces
.implements Lcom/tds/common/bridge/BridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/bridge/Bridge;->callHandler(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/bridge/Bridge;


# direct methods
.method constructor <init>(Lcom/tds/common/bridge/Bridge;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/bridge/Bridge;

    .line 99
    iput-object p1, p0, Lcom/tds/common/bridge/Bridge$2;->this$0:Lcom/tds/common/bridge/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .line 103
    :try_start_0
    invoke-static {}, Lcom/tds/common/utils/EngineUtil;->isUnreal()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    const-string v0, "BridgeCallback send Message to Unreal Engine"

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeLogger;->i(Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/tds/common/bridge/Bridge;->nativeOnResult(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_e} :catch_f

    .line 110
    :cond_e
    goto :goto_13

    .line 108
    :catch_f
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_13
    return-void
.end method
