.class public final Landroidx/navigation/NavType$ParcelableArrayType;
.super Landroidx/navigation/NavType;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableArrayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroidx/navigation/NavType<",
        "[TD;>;"
    }
.end annotation


# instance fields
.field private final mArrayType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "[TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 722
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 723
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 730
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_2d} :catch_31

    .line 733
    .local v0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<[TD;>;"
    nop

    .line 734
    iput-object v0, p0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    .line 735
    return-void

    .line 731
    .end local v0    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<[TD;>;"
    :catch_31
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 724
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement Parcelable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 764
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 765
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 767
    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavType$ParcelableArrayType;

    .line 769
    .local v0, "that":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<*>;"
    iget-object v1, p0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    iget-object v2, v0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 765
    .end local v0    # "that":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<*>;"
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 712
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$ParcelableArrayType;->get(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")[TD;"
        }
    .end annotation

    .line 747
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    check-cast v0, [Landroid/os/Parcelable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 759
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 774
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 712
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$ParcelableArrayType;->parseValue(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public parseValue(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TD;"
        }
    .end annotation

    .line 753
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Arrays don\'t support default values."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 712
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    check-cast p3, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType$ParcelableArrayType;->put(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public put(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "[TD;)V"
        }
    .end annotation

    .line 739
    .local p0, "this":Landroidx/navigation/NavType$ParcelableArrayType;, "Landroidx/navigation/NavType$ParcelableArrayType<TD;>;"
    .local p3, "value":[Landroid/os/Parcelable;, "[TD;"
    iget-object v0, p0, Landroidx/navigation/NavType$ParcelableArrayType;->mArrayType:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 741
    return-void
.end method
