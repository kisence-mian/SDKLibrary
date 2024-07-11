.class public Lcom/ss/android/downloadlib/a/a/d;
.super Landroid/content/Intent;
.source "MFIntent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .registers 2

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/a/d;->a(Landroid/os/Parcel;)V

    .line 32
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    return-void
.end method
