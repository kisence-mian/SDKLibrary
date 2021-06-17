.class Lcom/facebook/GraphRequest$4;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/GraphRequest;

    .line 922
    iput-object p1, p0, Lcom/facebook/GraphRequest$4;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 14
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 925
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 926
    .local v0, "responseObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 927
    const-string v2, "__debug__"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    .line 928
    .local v2, "debug":Lorg/json/JSONObject;
    :goto_f
    if-eqz v2, :cond_18

    .line 929
    const-string v3, "messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v1

    .line 930
    .local v3, "debugMessages":Lorg/json/JSONArray;
    :goto_19
    if-eqz v3, :cond_79

    .line 931
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_79

    .line 932
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 933
    .local v5, "debugMessageObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_2f

    .line 934
    const-string v6, "message"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_30

    :cond_2f
    move-object v6, v1

    .line 936
    .local v6, "debugMessage":Ljava/lang/String;
    :goto_30
    if-eqz v5, :cond_39

    .line 937
    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3a

    :cond_39
    move-object v7, v1

    .line 939
    .local v7, "debugMessageType":Ljava/lang/String;
    :goto_3a
    if-eqz v5, :cond_43

    .line 940
    const-string v8, "link"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_44

    :cond_43
    move-object v8, v1

    .line 942
    .local v8, "debugMessageLink":Ljava/lang/String;
    :goto_44
    if-eqz v6, :cond_76

    if-eqz v7, :cond_76

    .line 943
    sget-object v9, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    .line 944
    .local v9, "behavior":Lcom/facebook/LoggingBehavior;
    const-string v10, "warning"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 945
    sget-object v9, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 947
    :cond_54
    invoke-static {v8}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_71

    .line 948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Link: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 950
    :cond_71
    sget-object v10, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-static {v9, v10, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .end local v5    # "debugMessageObject":Lorg/json/JSONObject;
    .end local v6    # "debugMessage":Ljava/lang/String;
    .end local v7    # "debugMessageType":Ljava/lang/String;
    .end local v8    # "debugMessageLink":Ljava/lang/String;
    .end local v9    # "behavior":Lcom/facebook/LoggingBehavior;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 954
    .end local v4    # "i":I
    :cond_79
    iget-object v1, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v1, :cond_80

    .line 955
    invoke-interface {v1, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .line 957
    :cond_80
    return-void
.end method
