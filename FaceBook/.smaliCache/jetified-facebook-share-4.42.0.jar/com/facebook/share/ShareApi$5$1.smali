.class Lcom/facebook/share/ShareApi$5$1;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi$5;->keyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/ShareApi$5;

.field final synthetic val$current:Lcom/facebook/internal/Mutable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi$5;Lcom/facebook/internal/Mutable;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/facebook/share/ShareApi$5;

    .line 469
    iput-object p1, p0, Lcom/facebook/share/ShareApi$5$1;->this$1:Lcom/facebook/share/ShareApi$5;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iput p3, p0, Lcom/facebook/share/ShareApi$5$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 472
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/facebook/share/ShareApi$5$1;->val$size:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/facebook/share/ShareApi$5$1;->val$current:Lcom/facebook/internal/Mutable;

    iget-object v2, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 469
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi$5$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    .line 482
    return-void
.end method
