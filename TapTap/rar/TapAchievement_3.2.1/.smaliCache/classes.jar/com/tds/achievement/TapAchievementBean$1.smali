.class final Lcom/tds/achievement/TapAchievementBean$1;
.super Ljava/lang/Object;
.source "TapAchievementBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/TapAchievementBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tds/achievement/TapAchievementBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tds/achievement/TapAchievementBean;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    new-instance v0, Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {v0, p1}, Lcom/tds/achievement/TapAchievementBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/tds/achievement/TapAchievementBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tds/achievement/TapAchievementBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tds/achievement/TapAchievementBean;
    .registers 3
    .param p1, "size"    # I

    .line 143
    new-array v0, p1, [Lcom/tds/achievement/TapAchievementBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/tds/achievement/TapAchievementBean$1;->newArray(I)[Lcom/tds/achievement/TapAchievementBean;

    move-result-object p1

    return-object p1
.end method
