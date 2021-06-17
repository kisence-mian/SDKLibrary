.class final Lcom/facebook/share/internal/LikeActionController$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->handleOnActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .registers 4

    .line 221
    iput p1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iput p2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .line 226
    if-nez p2, :cond_c

    .line 227
    iget v0, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iget v1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;)V
    invoke-static {p1, v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V

    goto :goto_13

    .line 232
    :cond_c
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    :goto_13
    return-void
.end method
