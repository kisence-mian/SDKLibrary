.class public interface abstract Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoFriendListListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MomoFriendListListener"
.end annotation


# virtual methods
.method public abstract onFriendListFailed()V
.end method

.method public abstract onFriendListSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoUserInfo;",
            ">;)V"
        }
    .end annotation
.end method
