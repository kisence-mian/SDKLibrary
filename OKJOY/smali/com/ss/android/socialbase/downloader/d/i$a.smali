.class public abstract Lcom/ss/android/socialbase/downloader/d/i$a;
.super Landroid/os/Binder;
.source "IDownloadAidlListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/d/i$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/i;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/d/i;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/d/i;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/d/i$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/d/i$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 38
    sparse-switch p1, :sswitch_data_19c

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/d/i$a;->a()I

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    .line 51
    goto :goto_9

    .line 55
    :sswitch_22
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 58
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 63
    :goto_35
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 65
    goto :goto_9

    :cond_3d
    move-object v0, v1

    .line 61
    goto :goto_35

    .line 69
    :sswitch_3f
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 72
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 77
    :goto_52
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 79
    goto :goto_9

    :cond_5a
    move-object v0, v1

    .line 75
    goto :goto_52

    .line 83
    :sswitch_5c
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    .line 86
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 91
    :goto_6f
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 93
    goto :goto_9

    :cond_77
    move-object v0, v1

    .line 89
    goto :goto_6f

    .line 97
    :sswitch_79
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_95

    .line 100
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 105
    :goto_8c
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 107
    goto/16 :goto_9

    :cond_95
    move-object v0, v1

    .line 103
    goto :goto_8c

    .line 111
    :sswitch_97
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b3

    .line 114
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 119
    :goto_aa
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 121
    goto/16 :goto_9

    :cond_b3
    move-object v0, v1

    .line 117
    goto :goto_aa

    .line 125
    :sswitch_b5
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e0

    .line 128
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    move-object v2, v0

    .line 134
    :goto_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e2

    .line 135
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 140
    :goto_d7
    invoke-virtual {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 142
    goto/16 :goto_9

    :cond_e0
    move-object v2, v1

    .line 131
    goto :goto_c9

    :cond_e2
    move-object v0, v1

    .line 138
    goto :goto_d7

    .line 146
    :sswitch_e4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_100

    .line 149
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 154
    :goto_f7
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->f(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 156
    goto/16 :goto_9

    :cond_100
    move-object v0, v1

    .line 152
    goto :goto_f7

    .line 160
    :sswitch_102
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11e

    .line 163
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 168
    :goto_115
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->g(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 170
    goto/16 :goto_9

    :cond_11e
    move-object v0, v1

    .line 166
    goto :goto_115

    .line 174
    :sswitch_120
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13c

    .line 177
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 182
    :goto_133
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->h(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 184
    goto/16 :goto_9

    :cond_13c
    move-object v0, v1

    .line 180
    goto :goto_133

    .line 188
    :sswitch_13e
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_169

    .line 191
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    move-object v2, v0

    .line 197
    :goto_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16b

    .line 198
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 203
    :goto_160
    invoke-virtual {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 205
    goto/16 :goto_9

    :cond_169
    move-object v2, v1

    .line 194
    goto :goto_152

    :cond_16b
    move-object v0, v1

    .line 201
    goto :goto_160

    .line 209
    :sswitch_16d
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_198

    .line 212
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    move-object v2, v0

    .line 218
    :goto_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19a

    .line 219
    sget-object v0, Lcom/ss/android/socialbase/downloader/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    .line 224
    :goto_18f
    invoke-virtual {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 226
    goto/16 :goto_9

    :cond_198
    move-object v2, v1

    .line 215
    goto :goto_181

    :cond_19a
    move-object v0, v1

    .line 222
    goto :goto_18f

    .line 38
    :sswitch_data_19c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_79
        0x6 -> :sswitch_97
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_e4
        0x9 -> :sswitch_102
        0xa -> :sswitch_120
        0xb -> :sswitch_13e
        0xc -> :sswitch_16d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
