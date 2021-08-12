.class public Lcom/ss/android/socialbase/downloader/model/c;
.super Ljava/lang/Object;
.source "HttpHeader.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/c$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/model/c$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/model/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 58
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/model/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 59
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 60
    return v2

    .line 62
    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v0, :cond_1b

    .line 63
    return v3

    .line 65
    :cond_1b
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 66
    if-lez p1, :cond_26

    .line 67
    return v1

    .line 68
    :cond_26
    if-gez p1, :cond_29

    .line 69
    return v3

    .line 71
    :cond_29
    return v2

    .line 73
    :cond_2a
    return v1
.end method

.method public describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 81
    :cond_12
    check-cast p1, Lcom/ss/android/socialbase/downloader/model/c;

    .line 82
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    .line 83
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 82
    :goto_2a
    return v0

    .line 80
    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
