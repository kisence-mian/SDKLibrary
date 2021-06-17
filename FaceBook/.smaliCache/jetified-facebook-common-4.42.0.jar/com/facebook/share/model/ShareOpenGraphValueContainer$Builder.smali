.class public abstract Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.super Ljava/lang/Object;
.source "ShareOpenGraphValueContainer.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "TP;TE;>;"
    }
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 249
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 249
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public putBoolean(Ljava/lang/String;Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TE;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    return-object p0
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TE;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 273
    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TE;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 284
    return-object p0
.end method

.method public putDoubleArray(Ljava/lang/String;[D)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TE;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 295
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    return-object p0
.end method

.method public putIntArray(Ljava/lang/String;[I)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)TE;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 317
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 328
    return-object p0
.end method

.method public putLongArray(Ljava/lang/String;[J)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TE;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 339
    return-object p0
.end method

.method public putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ")TE;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 350
    return-object p0
.end method

.method public putObjectArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;)TE;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/ShareOpenGraphObject;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    return-object p0
.end method

.method public putPhoto(Ljava/lang/String;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/facebook/share/model/SharePhoto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/share/model/SharePhoto;",
            ")TE;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    return-object p0
.end method

.method public putPhotoArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)TE;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/SharePhoto;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 385
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object p0
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    return-object p0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 249
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphValueContainer;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TE;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p1, "model":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "TP;"
    if-eqz p1, :cond_b

    .line 413
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 415
    :cond_b
    return-object p0
.end method
