.class final Lcom/JoyFramework/wight/recyclerview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;
    .registers 3

    .prologue
    .line 960
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;
    .registers 3

    .prologue
    .line 965
    new-array v0, p1, [Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/recyclerview/d;->a(Landroid/os/Parcel;)Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/recyclerview/d;->a(I)[Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    move-result-object v0

    return-object v0
.end method
