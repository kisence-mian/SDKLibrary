.class final Lcom/facebook/GraphRequest$1;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/facebook/GraphRequest$1;->val$callback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 315
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->val$callback:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    if-eqz v0, :cond_b

    .line 316
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/GraphRequest$GraphJSONObjectCallback;->onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V

    .line 318
    :cond_b
    return-void
.end method
