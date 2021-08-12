.class public abstract Lcom/ss/android/socialbase/downloader/depend/i$a;
.super Landroid/os/Binder;
.source "IDownloadAidlListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/i$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/depend/i$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 3

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/i;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/i;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/depend/i$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/depend/i$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 1

    .line 675
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/i$a$a;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    nop

    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlListener"

    sparse-switch p1, :sswitch_data_194

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :sswitch_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v0

    .line 278
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 281
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_25

    .line 284
    :cond_24
    nop

    .line 286
    :goto_25
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v0

    .line 257
    :sswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3e

    .line 260
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_3f

    .line 263
    :cond_3e
    move-object p1, v1

    .line 266
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4f

    .line 267
    sget-object p4, Lcom/ss/android/socialbase/downloader/exception/BaseException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_50

    .line 270
    :cond_4f
    nop

    .line 272
    :goto_50
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v0

    .line 236
    :sswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_69

    .line 239
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_6a

    .line 242
    :cond_69
    move-object p1, v1

    .line 245
    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7a

    .line 246
    sget-object p4, Lcom/ss/android/socialbase/downloader/exception/BaseException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_7b

    .line 249
    :cond_7a
    nop

    .line 251
    :goto_7b
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    return v0

    .line 222
    :sswitch_82
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_95

    .line 225
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_96

    .line 228
    :cond_95
    nop

    .line 230
    :goto_96
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    return v0

    .line 208
    :sswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b0

    .line 211
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_b1

    .line 214
    :cond_b0
    nop

    .line 216
    :goto_b1
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v0

    .line 194
    :sswitch_b8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_cb

    .line 197
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_cc

    .line 200
    :cond_cb
    nop

    .line 202
    :goto_cc
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    return v0

    .line 173
    :sswitch_d3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e5

    .line 176
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_e6

    .line 179
    :cond_e5
    move-object p1, v1

    .line 182
    :goto_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f6

    .line 183
    sget-object p4, Lcom/ss/android/socialbase/downloader/exception/BaseException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_f7

    .line 186
    :cond_f6
    nop

    .line 188
    :goto_f7
    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    return v0

    .line 159
    :sswitch_fe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_111

    .line 162
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_112

    .line 165
    :cond_111
    nop

    .line 167
    :goto_112
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v0

    .line 145
    :sswitch_119
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12c

    .line 148
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_12d

    .line 151
    :cond_12c
    nop

    .line 153
    :goto_12d
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v0

    .line 131
    :sswitch_134
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_147

    .line 134
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_148

    .line 137
    :cond_147
    nop

    .line 139
    :goto_148
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v0

    .line 117
    :sswitch_14f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_162

    .line 120
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_163

    .line 123
    :cond_162
    nop

    .line 125
    :goto_163
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v0

    .line 103
    :sswitch_16a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17d

    .line 106
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_17e

    .line 109
    :cond_17d
    nop

    .line 111
    :goto_17e
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v0

    .line 95
    :sswitch_185
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a()I

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v0

    nop

    :sswitch_data_194
    .sparse-switch
        0x1 -> :sswitch_185
        0x2 -> :sswitch_16a
        0x3 -> :sswitch_14f
        0x4 -> :sswitch_134
        0x5 -> :sswitch_119
        0x6 -> :sswitch_fe
        0x7 -> :sswitch_d3
        0x8 -> :sswitch_b8
        0x9 -> :sswitch_9d
        0xa -> :sswitch_82
        0xb -> :sswitch_57
        0xc -> :sswitch_2c
        0xd -> :sswitch_11
        0x5f4e5446 -> :sswitch_d
    .end sparse-switch
.end method
