.class final Landroidx/core/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 303
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V
    .registers 6
    .param p1, "typeface"    # Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    .line 307
    sget-object v0, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    sget-object v1, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    iget-object v2, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 309
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    if-nez v1, :cond_11

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_11
    sget-object v2, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    iget-object v3, p0, Landroidx/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 317
    .end local v0    # "i":I
    :cond_2c
    return-void

    .line 313
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    goto :goto_31

    :goto_30
    throw v1

    :goto_31
    goto :goto_30
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 303
    check-cast p1, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontsContractCompat$3;->onReply(Landroidx/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
