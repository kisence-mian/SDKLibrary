.class public abstract Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.super Ljava/lang/Object;
.source "ShareOpenGraphValueContainer.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<",
            "TP;TE;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    .local p1, "builder":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    # getter for: Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->access$000(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 239
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 58
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 68
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 78
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 227
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 88
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 98
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 108
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 128
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 138
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 147
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public getObjectArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez v0, :cond_a

    .line 160
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/ShareOpenGraphObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 164
    .local v3, "item":Landroid/os/Parcelable;
    instance-of v4, v3, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v4, :cond_29

    .line 165
    move-object v4, v3

    check-cast v4, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3    # "item":Landroid/os/Parcelable;
    :cond_29
    goto :goto_13

    .line 168
    :cond_2a
    return-object v1
.end method

.method public getPhoto(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 178
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 179
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/SharePhoto;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public getPhotoArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez v0, :cond_a

    .line 191
    const/4 v1, 0x0

    return-object v1

    .line 193
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/SharePhoto;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 195
    .local v3, "item":Landroid/os/Parcelable;
    instance-of v4, v3, Lcom/facebook/share/model/SharePhoto;

    if-eqz v4, :cond_29

    .line 196
    move-object v4, v3

    check-cast v4, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v3    # "item":Landroid/os/Parcelable;
    :cond_29
    goto :goto_13

    .line 199
    :cond_2a
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 209
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method
