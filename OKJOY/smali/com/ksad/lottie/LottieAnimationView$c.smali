.class Lcom/ksad/lottie/LottieAnimationView$c;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ksad/lottie/LottieAnimationView$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:F

.field d:Z

.field e:Ljava/lang/String;

.field f:I

.field g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/LottieAnimationView$c$a;

    invoke-direct {v0}, Lcom/ksad/lottie/LottieAnimationView$c$a;-><init>()V

    sput-object v0, Lcom/ksad/lottie/LottieAnimationView$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ksad/lottie/LottieAnimationView$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ksad/lottie/LottieAnimationView$c;->c:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_2b

    :goto_16
    iput-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->g:I

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ksad/lottie/LottieAnimationView$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ksad/lottie/LottieAnimationView$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ksad/lottie/LottieAnimationView$c;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
