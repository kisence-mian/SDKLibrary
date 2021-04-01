.class final Lcom/anythink/myoffer/ui/f$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/ui/f$b;
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
        "Lcom/anythink/myoffer/ui/f$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/anythink/myoffer/ui/f$b;
    .registers 2

    .prologue
    .line 244
    new-instance v0, Lcom/anythink/myoffer/ui/f$b;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/ui/f$b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/anythink/myoffer/ui/f$b;
    .registers 2

    .prologue
    .line 249
    new-array v0, p0, [Lcom/anythink/myoffer/ui/f$b;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2244
    new-instance v0, Lcom/anythink/myoffer/ui/f$b;

    invoke-direct {v0, p1}, Lcom/anythink/myoffer/ui/f$b;-><init>(Landroid/os/Parcel;)V

    .line 240
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 240
    .line 1249
    new-array v0, p1, [Lcom/anythink/myoffer/ui/f$b;

    .line 240
    return-object v0
.end method
