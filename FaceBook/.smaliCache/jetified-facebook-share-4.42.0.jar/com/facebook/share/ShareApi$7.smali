.class Lcom/facebook/share/ShareApi$7;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .line 524
    iput-object p1, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onMapValueCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 529
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 530
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    # invokes: Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, v1, p2}, Lcom/facebook/share/ShareApi;->access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_2a

    .line 531
    :cond_d
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1a

    .line 532
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject;

    # invokes: Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, v1, p2}, Lcom/facebook/share/ShareApi;->access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_2a

    .line 535
    :cond_1a
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_27

    .line 536
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    # invokes: Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    invoke-static {v0, v1, p2}, Lcom/facebook/share/ShareApi;->access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_2a

    .line 538
    :cond_27
    invoke-interface {p2, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    .line 540
    :goto_2a
    return-void
.end method
