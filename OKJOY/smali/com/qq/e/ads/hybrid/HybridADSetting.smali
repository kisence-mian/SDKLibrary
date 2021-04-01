.class public Lcom/qq/e/ads/hybrid/HybridADSetting;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qq/e/ads/hybrid/HybridADSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_REWARD_VIDEO:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/qq/e/ads/hybrid/HybridADSetting$1;

    invoke-direct {v0}, Lcom/qq/e/ads/hybrid/HybridADSetting$1;-><init>()V

    sput-object v0, Lcom/qq/e/ads/hybrid/HybridADSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    const/16 v0, 0x2c

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    const v0, -0xd5d2cd

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    iput v1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    const v0, -0x1b1a19

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    iput v1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    const/16 v0, 0x2c

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    const v0, -0xd5d2cd

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    iput v1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    const v0, -0x1b1a19

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    iput v1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    return-void
.end method


# virtual methods
.method public backButtonImage(Ljava/lang/String;)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "backButtonImage"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->g:Ljava/lang/String;

    return-object p0
.end method

.method public backSeparatorLength(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "backSeparatorLength"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    return-object p0
.end method

.method public closeButtonImage(Ljava/lang/String;)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "closeButtonImage"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->h:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackButtonImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getBackSeparatorLength()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    return v0
.end method

.method public getCloseButtonImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparatorColor()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBarColor()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    return v0
.end method

.method public getTitleBarHeight()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    return v0
.end method

.method public getTitleColor()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    return v0
.end method

.method public getTitleSize()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    return v0
.end method

.method public separatorColor(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "separatorColor"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->f:Ljava/lang/String;

    return-object p0
.end method

.method public titleBarColor(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "titleBarColor"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    return-object p0
.end method

.method public titleBarHeight(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "titleBarHeight"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    return-object p0
.end method

.method public titleColor(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "titleColor"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    return-object p0
.end method

.method public titleSize(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "titleSize"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    return-object p0
.end method

.method public type(I)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qq/e/ads/hybrid/HybridADSetting;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
