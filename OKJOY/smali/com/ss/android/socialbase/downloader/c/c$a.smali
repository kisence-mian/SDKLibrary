.class public abstract Lcom/ss/android/socialbase/downloader/c/c$a;
.super Landroid/os/Binder;
.source "ISqlDownloadCacheAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/c/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/c/c;
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
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/c/c;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/c$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/c/c$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_3b4

    .line 506
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_a
    return v6

    .line 42
    :sswitch_b
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 47
    :sswitch_11
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 54
    :sswitch_1d
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(I)Z

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_34

    move v0, v6

    :goto_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_34
    move v0, v7

    goto :goto_30

    .line 64
    :sswitch_36
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v0, :cond_4f

    .line 70
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 74
    :cond_4f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 80
    :sswitch_53
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_a

    .line 90
    :sswitch_67
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_a

    .line 100
    :sswitch_7b
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 110
    :sswitch_90
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 120
    :sswitch_a5
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->c(I)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 130
    :sswitch_ba
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->d(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 139
    :sswitch_cb
    const-string v1, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_de

    .line 142
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 147
    :cond_de
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 153
    :sswitch_e6
    const-string v1, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f9

    .line 156
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 161
    :cond_f9
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 167
    :sswitch_101
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 174
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(IIJ)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 180
    :sswitch_11a
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(IIIJ)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 195
    :sswitch_138
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(IIII)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 210
    :sswitch_155
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(II)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v0, :cond_173

    .line 218
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 222
    :cond_173
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 228
    :sswitch_178
    const-string v1, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18b

    .line 231
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 236
    :cond_18b
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v0, :cond_195

    move v7, v6

    :cond_195
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 243
    :sswitch_19a
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->e(I)Z

    move-result v0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v0, :cond_1ad

    move v7, v6

    :cond_1ad
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 253
    :sswitch_1b2
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->f(I)Z

    move-result v0

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v0, :cond_1c5

    move v7, v6

    :cond_1c5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 263
    :sswitch_1ca
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/c/c$a;->b()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 270
    :sswitch_1d7
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->g(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v0, :cond_1f1

    .line 276
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 280
    :cond_1f1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 286
    :sswitch_1f6
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 295
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v0, :cond_21d

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 302
    :cond_21d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 308
    :sswitch_222
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 313
    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v0, :cond_240

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 320
    :cond_240
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 326
    :sswitch_245
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 331
    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v0, :cond_263

    .line 334
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 338
    :cond_263
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 344
    :sswitch_268
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v0, :cond_282

    .line 350
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 354
    :cond_282
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 360
    :sswitch_287
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 365
    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->c(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v0, :cond_2a5

    .line 368
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 372
    :cond_2a5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 378
    :sswitch_2aa
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 383
    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->d(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v0, :cond_2c8

    .line 386
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 390
    :cond_2c8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 396
    :sswitch_2cd
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 401
    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/c/c$a;->e(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v0, :cond_2eb

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 408
    :cond_2eb
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 414
    :sswitch_2f0
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->i(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v0, :cond_30a

    .line 420
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 424
    :cond_30a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 430
    :sswitch_30f
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 433
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->j(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v0, :cond_329

    .line 436
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 440
    :cond_329
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 446
    :sswitch_32e
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/c/c$a;->c()Z

    move-result v0

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v0, :cond_33d

    move v7, v6

    :cond_33d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 454
    :sswitch_342
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/c/c$a;->d()Z

    move-result v0

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v0, :cond_351

    move v7, v6

    :cond_351
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 462
    :sswitch_356
    const-string v1, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_369

    .line 465
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 470
    :cond_369
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 476
    :sswitch_371
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(ILjava/util/List;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 487
    :sswitch_388
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 492
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/c/c$a;->b(ILjava/util/List;)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 498
    :sswitch_39f
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/b$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/c/b;

    move-result-object v0

    .line 501
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(Lcom/ss/android/socialbase/downloader/c/b;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 38
    :sswitch_data_3b4
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_36
        0x4 -> :sswitch_53
        0x5 -> :sswitch_67
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a5
        0x9 -> :sswitch_ba
        0xa -> :sswitch_cb
        0xb -> :sswitch_e6
        0xc -> :sswitch_101
        0xd -> :sswitch_11a
        0xe -> :sswitch_138
        0xf -> :sswitch_155
        0x10 -> :sswitch_178
        0x11 -> :sswitch_19a
        0x12 -> :sswitch_1b2
        0x13 -> :sswitch_1ca
        0x14 -> :sswitch_1d7
        0x15 -> :sswitch_1f6
        0x16 -> :sswitch_222
        0x17 -> :sswitch_245
        0x18 -> :sswitch_268
        0x19 -> :sswitch_287
        0x1a -> :sswitch_2aa
        0x1b -> :sswitch_2cd
        0x1c -> :sswitch_2f0
        0x1d -> :sswitch_30f
        0x1e -> :sswitch_32e
        0x1f -> :sswitch_342
        0x20 -> :sswitch_356
        0x21 -> :sswitch_371
        0x22 -> :sswitch_388
        0x23 -> :sswitch_39f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
