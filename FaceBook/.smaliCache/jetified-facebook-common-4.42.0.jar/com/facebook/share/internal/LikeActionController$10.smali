.class Lcom/facebook/share/internal/LikeActionController$10;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .line 1163
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "result"    # Landroid/os/Bundle;

    .line 1167
    if-eqz p1, :cond_8a

    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8a

    .line 1171
    :cond_c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1173
    .local v0, "objectIsLiked":Z
    nop

    .line 1174
    const-string v1, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_26

    :cond_1f
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1176
    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_26
    nop

    .line 1178
    .local v4, "likeCountWithLike":Ljava/lang/String;
    nop

    .line 1179
    const-string v1, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1180
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3d

    :cond_36
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1182
    # getter for: Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_3d
    nop

    .line 1184
    .local v5, "likeCountWithoutLike":Ljava/lang/String;
    nop

    .line 1185
    const-string v1, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1186
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_54

    :cond_4d
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1187
    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_54
    nop

    .line 1189
    .local v6, "socialSentenceWithLike":Ljava/lang/String;
    nop

    .line 1190
    const-string v1, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1191
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_6b

    :cond_64
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1193
    # getter for: Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_6b
    nop

    .line 1195
    .local v7, "socialSentenceWithoutLike":Ljava/lang/String;
    nop

    .line 1196
    const-string v1, "com.facebook.platform.extra.UNLIKE_TOKEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1197
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_82

    :cond_7b
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1198
    # getter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_82
    nop

    .line 1200
    .local v8, "unlikeToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    move v3, v0

    # invokes: Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v8}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void

    .line 1168
    .end local v0    # "objectIsLiked":Z
    .end local v4    # "likeCountWithLike":Ljava/lang/String;
    .end local v5    # "likeCountWithoutLike":Ljava/lang/String;
    .end local v6    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v7    # "socialSentenceWithoutLike":Ljava/lang/String;
    .end local v8    # "unlikeToken":Ljava/lang/String;
    :cond_8a
    :goto_8a
    return-void
.end method
