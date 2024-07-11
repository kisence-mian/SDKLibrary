.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/q;
.super Ljava/lang/Object;
.source "NetApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/q$a;,
        Lcom/bytedance/sdk/openadsdk/core/q$b;,
        Lcom/bytedance/sdk/openadsdk/core/q$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation
.end method

.method public abstract a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/h;
.end method

.method public abstract a()Lcom/bytedance/sdk/openadsdk/core/d/q;
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V
.end method

.method public abstract a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q$a;)V
.end method

.method public abstract a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/q$c;)V
.end method

.method public abstract a(Lorg/json/JSONObject;I)Z
.end method
