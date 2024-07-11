.class Lcom/facebook/share/internal/LikeActionController$6;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .line 881
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;

    .line 958
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController$6;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 959
    return-void
.end method

.method public onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 7
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .line 936
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 938
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 936
    const-string v3, "Like Dialog failed with error : %s"

    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 943
    .local v0, "logParams":Landroid/os/Bundle;
    :cond_1a
    nop

    .line 945
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    const-string v2, "call_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "present_dialog"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 950
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 953
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v2

    .line 950
    const-string v3, "com.facebook.sdk.LikeActionController.DID_ERROR"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v3, v2}, Lcom/facebook/share/internal/LikeActionController;->access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 954
    return-void
.end method

.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 884
    if-eqz p2, :cond_91

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_91

    .line 889
    :cond_c
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 892
    .local v1, "isObjectLiked":Z
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 893
    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "likeCountStringWithLike":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 895
    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "likeCountStringWithoutLike":Ljava/lang/String;
    const-string v4, "like_count_string"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 897
    nop

    .line 898
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    move-object v3, v2

    move-object v9, v2

    move-object v10, v3

    goto :goto_2f

    .line 896
    :cond_2d
    move-object v9, v2

    move-object v10, v3

    .line 902
    .end local v2    # "likeCountStringWithLike":Ljava/lang/String;
    .end local v3    # "likeCountStringWithoutLike":Ljava/lang/String;
    .local v9, "likeCountStringWithLike":Ljava/lang/String;
    .local v10, "likeCountStringWithoutLike":Ljava/lang/String;
    :goto_2f
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "socialSentenceWithLike":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 904
    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    const-string v4, "social_sentence"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 906
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    move-object v3, v2

    move-object v11, v2

    move-object v12, v3

    goto :goto_4d

    .line 905
    :cond_4b
    move-object v11, v2

    move-object v12, v3

    .line 911
    .end local v2    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v3    # "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    .local v11, "socialSentenceWithLike":Ljava/lang/String;
    .local v12, "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    :goto_4d
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 912
    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_62

    :cond_5b
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 913
    # getter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_62
    nop

    .line 915
    .local v8, "unlikeToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_6c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .local v0, "logParams":Landroid/os/Bundle;
    :cond_6c
    nop

    .line 919
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    const-string v3, "call_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "fb_like_control_dialog_did_succeed"

    invoke-virtual {v2, v4, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 925
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    move v3, v1

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    # invokes: Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v8}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void

    .line 886
    .end local v0    # "logParams":Landroid/os/Bundle;
    .end local v1    # "isObjectLiked":Z
    .end local v8    # "unlikeToken":Ljava/lang/String;
    .end local v9    # "likeCountStringWithLike":Ljava/lang/String;
    .end local v10    # "likeCountStringWithoutLike":Ljava/lang/String;
    .end local v11    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v12    # "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    :cond_91
    :goto_91
    return-void
.end method
