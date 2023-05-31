.class public interface abstract Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;
.super Ljava/lang/Object;
.source "DLCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/DLCManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InventoryCallback"
.end annotation


# virtual methods
.method public abstract onOrderCallBack(Ljava/lang/String;I)V
.end method

.method public abstract onQueryCallBack(ILjava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method
