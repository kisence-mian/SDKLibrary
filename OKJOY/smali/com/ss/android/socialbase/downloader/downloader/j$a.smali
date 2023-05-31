.class public abstract Lcom/ss/android/socialbase/downloader/downloader/j$a;
.super Landroid/os/Binder;
.source "IDownloadAidlService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/downloader/j$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/j;
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
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/j;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/j$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_4bc

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_a
    return v6

    .line 42
    :sswitch_b
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 47
    :sswitch_11
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Lcom/ss/android/socialbase/downloader/g/a;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 56
    :sswitch_25
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 65
    :sswitch_35
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v6

    .line 70
    :goto_45
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(IZ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_4c
    move v0, v5

    .line 69
    goto :goto_45

    .line 76
    :sswitch_4e
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(I)Z

    move-result v0

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v0, :cond_61

    move v5, v6

    :cond_61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 86
    :sswitch_65
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->c(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 95
    :sswitch_75
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->d(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 104
    :sswitch_85
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 111
    :sswitch_92
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->e(I)J

    move-result-wide v0

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_a

    .line 121
    :sswitch_a7
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->f(I)I

    move-result v0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 131
    :sswitch_bc
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->g(I)Z

    move-result v0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v0, :cond_cf

    move v5, v6

    :cond_cf
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 141
    :sswitch_d4
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v0, :cond_ee

    .line 147
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 151
    :cond_ee
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 157
    :sswitch_f3
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 167
    :sswitch_108
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->i(I)Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 177
    :sswitch_11d
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 189
    :sswitch_136
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v0, :cond_154

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, p3, v6}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 201
    :cond_154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 207
    :sswitch_159
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 217
    :sswitch_16e
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 227
    :sswitch_183
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 237
    :sswitch_198
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Ljava/util/List;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 246
    :sswitch_1a9
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b9

    move v5, v6

    .line 251
    :cond_1b9
    invoke-virtual {p0, v0, v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(IZ)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 257
    :sswitch_1c1
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->j(I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 266
    :sswitch_1d2
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v3

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(IILcom/ss/android/socialbase/downloader/d/i;IZ)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 283
    :sswitch_1fb
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v3

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21b

    move v5, v6

    :cond_21b
    move-object v0, p0

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(IILcom/ss/android/socialbase/downloader/d/i;IZ)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 300
    :sswitch_224
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_237

    .line 303
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 308
    :cond_237
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v0, :cond_241

    move v5, v6

    :cond_241
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 315
    :sswitch_246
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25d

    .line 320
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 325
    :cond_25d
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(ILandroid/app/Notification;)V

    goto/16 :goto_a

    .line 330
    :sswitch_262
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26e

    move v5, v6

    .line 333
    :cond_26e
    invoke-virtual {p0, v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Z)V

    goto/16 :goto_a

    .line 338
    :sswitch_273
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b()Z

    move-result v0

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v0, :cond_282

    move v5, v6

    :cond_282
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 346
    :sswitch_287
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 356
    :sswitch_29c
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->k(I)Z

    move-result v0

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v0, :cond_2af

    move v5, v6

    :cond_2af
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 366
    :sswitch_2b4
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->l(I)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 375
    :sswitch_2c5
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->c()Z

    move-result v0

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v0, :cond_2d4

    move v5, v6

    :cond_2d4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 383
    :sswitch_2d9
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e9

    move v5, v6

    .line 388
    :cond_2e9
    invoke-virtual {p0, v0, v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->c(IZ)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 394
    :sswitch_2f1
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->m(I)I

    move-result v0

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 404
    :sswitch_306
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_319

    .line 407
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 412
    :cond_319
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 418
    :sswitch_321
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_334

    .line 421
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 426
    :cond_334
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v0, :cond_33e

    move v5, v6

    :cond_33e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 433
    :sswitch_343
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->n(I)Z

    move-result v0

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v0, :cond_356

    move v5, v6

    :cond_356
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 443
    :sswitch_35b
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->o(I)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 452
    :sswitch_36c
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 459
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(IIJ)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 465
    :sswitch_385
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 474
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(IIIJ)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 480
    :sswitch_3a3
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(IIII)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 495
    :sswitch_3c0
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->p(I)Z

    move-result v0

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v0, :cond_3d3

    move v5, v6

    :cond_3d3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 505
    :sswitch_3d8
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->d()V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 512
    :sswitch_3e5
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 517
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(ILjava/util/List;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 523
    :sswitch_3fc
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->b(ILjava/util/List;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 534
    :sswitch_413
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/d/af$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/af;

    move-result-object v0

    .line 537
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Lcom/ss/android/socialbase/downloader/d/af;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 543
    :sswitch_428
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 548
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(II)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 554
    :sswitch_43d
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->q(I)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v1, :cond_453

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/d/y;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_453
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 564
    :sswitch_458
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->r(I)Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v1, :cond_46e

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/d/ab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_46e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 574
    :sswitch_473
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/d/y$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v1

    .line 579
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(ILcom/ss/android/socialbase/downloader/d/y;)V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 585
    :sswitch_48c
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 588
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->s(I)Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v1, :cond_4a2

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/d/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 595
    :sswitch_4a7
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->e()Z

    move-result v0

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v0, :cond_4b6

    move v5, v6

    :cond_4b6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 38
    nop

    :sswitch_data_4bc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_65
        0x6 -> :sswitch_75
        0x7 -> :sswitch_85
        0x8 -> :sswitch_92
        0x9 -> :sswitch_a7
        0xa -> :sswitch_bc
        0xb -> :sswitch_d4
        0xc -> :sswitch_f3
        0xd -> :sswitch_108
        0xe -> :sswitch_11d
        0xf -> :sswitch_136
        0x10 -> :sswitch_159
        0x11 -> :sswitch_16e
        0x12 -> :sswitch_183
        0x13 -> :sswitch_198
        0x14 -> :sswitch_1a9
        0x15 -> :sswitch_1c1
        0x16 -> :sswitch_1d2
        0x17 -> :sswitch_1fb
        0x18 -> :sswitch_224
        0x19 -> :sswitch_246
        0x1a -> :sswitch_262
        0x1b -> :sswitch_273
        0x1c -> :sswitch_287
        0x1d -> :sswitch_29c
        0x1e -> :sswitch_2b4
        0x1f -> :sswitch_2c5
        0x20 -> :sswitch_2d9
        0x21 -> :sswitch_2f1
        0x22 -> :sswitch_306
        0x23 -> :sswitch_321
        0x24 -> :sswitch_343
        0x25 -> :sswitch_35b
        0x26 -> :sswitch_36c
        0x27 -> :sswitch_385
        0x28 -> :sswitch_3a3
        0x29 -> :sswitch_3c0
        0x2a -> :sswitch_3d8
        0x2b -> :sswitch_3e5
        0x2c -> :sswitch_3fc
        0x2d -> :sswitch_413
        0x2e -> :sswitch_428
        0x2f -> :sswitch_43d
        0x30 -> :sswitch_458
        0x31 -> :sswitch_473
        0x32 -> :sswitch_48c
        0x33 -> :sswitch_4a7
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
