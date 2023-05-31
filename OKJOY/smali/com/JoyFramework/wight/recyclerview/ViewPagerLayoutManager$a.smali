.class Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:F

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 956
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/d;

    invoke-direct {v0}, Lcom/JoyFramework/wight/recyclerview/d;-><init>()V

    sput-object v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_19

    :goto_16
    iput-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    .line 936
    return-void

    .line 935
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;)V
    .registers 3

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iget v0, p1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    .line 940
    iget v0, p1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    .line 941
    iget-boolean v0, p1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    iput-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    .line 942
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 951
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 953
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    return-void

    .line 953
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
