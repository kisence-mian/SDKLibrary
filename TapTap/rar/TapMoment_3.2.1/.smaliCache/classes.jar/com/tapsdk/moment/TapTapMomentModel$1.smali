.class Lcom/tapsdk/moment/TapTapMomentModel$1;
.super Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.source "TapTapMomentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapTapMomentModel;->getTapTokenByXDSDK(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/TapTapMomentModel;

.field final synthetic val$listener:Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/TapTapMomentModel;Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/TapTapMomentModel;

    .line 23
    iput-object p1, p0, Lcom/tapsdk/moment/TapTapMomentModel$1;->this$0:Lcom/tapsdk/moment/TapTapMomentModel;

    iput-object p2, p0, Lcom/tapsdk/moment/TapTapMomentModel$1;->val$listener:Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;

    invoke-direct {p0}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/tapsdk/moment/TapTapMomentModel$1;->this$0:Lcom/tapsdk/moment/TapTapMomentModel;

    iget-object v1, p0, Lcom/tapsdk/moment/TapTapMomentModel$1;->val$listener:Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/TapTapMomentModel;->getTapTokenByISCAsync(Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    .line 27
    return-void
.end method
