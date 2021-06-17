.class public Lcom/facebook/share/model/CameraEffectTextures;
.super Ljava/lang/Object;
.source "CameraEffectTextures.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectTextures$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/CameraEffectTextures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final textures:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/CameraEffectTextures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/CameraEffectTextures$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    # getter for: Lcom/facebook/share/model/CameraEffectTextures$Builder;->textures:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->access$000(Lcom/facebook/share/model/CameraEffectTextures$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;Lcom/facebook/share/model/CameraEffectTextures$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/CameraEffectTextures$1;

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures;-><init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/model/CameraEffectTextures;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/CameraEffectTextures;

    .line 38
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTextureBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    .line 56
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTextureUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_e

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    return-object v1

    .line 65
    :cond_e
    const/4 v1, 0x0

    return-object v1
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

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
