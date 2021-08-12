.class final Lcom/qq/e/ads/hybrid/HybridADSetting$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/hybrid/HybridADSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qq/e/ads/hybrid/HybridADSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 3

    new-instance v0, Lcom/qq/e/ads/hybrid/HybridADSetting;

    invoke-direct {v0, p1}, Lcom/qq/e/ads/hybrid/HybridADSetting;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/hybrid/HybridADSetting$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qq/e/ads/hybrid/HybridADSetting;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/qq/e/ads/hybrid/HybridADSetting;
    .registers 2

    new-array p1, p1, [Lcom/qq/e/ads/hybrid/HybridADSetting;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/hybrid/HybridADSetting$1;->newArray(I)[Lcom/qq/e/ads/hybrid/HybridADSetting;

    move-result-object p1

    return-object p1
.end method
