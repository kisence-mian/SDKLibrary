.class final Lcom/ksad/lottie/LottieAnimationView$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/LottieAnimationView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ksad/lottie/LottieAnimationView$c;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ksad/lottie/LottieAnimationView$c;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ksad/lottie/LottieAnimationView$c;-><init>(Landroid/os/Parcel;Lcom/ksad/lottie/LottieAnimationView$a;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ksad/lottie/LottieAnimationView$c$a;->createFromParcel(Landroid/os/Parcel;)Lcom/ksad/lottie/LottieAnimationView$c;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ksad/lottie/LottieAnimationView$c;
    .registers 3

    new-array v0, p1, [Lcom/ksad/lottie/LottieAnimationView$c;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ksad/lottie/LottieAnimationView$c$a;->newArray(I)[Lcom/ksad/lottie/LottieAnimationView$c;

    move-result-object v0

    return-object v0
.end method
