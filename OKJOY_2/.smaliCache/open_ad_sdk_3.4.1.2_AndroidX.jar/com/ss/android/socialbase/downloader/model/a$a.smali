.class public abstract Lcom/ss/android/socialbase/downloader/model/a$a;
.super Landroid/os/Binder;
.source "DownloadAidlTask.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/model/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/model/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/model/a$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/model/a;
    .registers 3

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/model/a;

    if-eqz v1, :cond_13

    .line 99
    check-cast v0, Lcom/ss/android/socialbase/downloader/model/a;

    return-object v0

    .line 101
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/a$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/model/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static m()Lcom/ss/android/socialbase/downloader/model/a;
    .registers 1

    .line 638
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->a:Lcom/ss/android/socialbase/downloader/model/a;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    nop

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    sparse-switch p1, :sswitch_data_15e

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 114
    :sswitch_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 253
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a$a;->c(I)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 259
    return v1

    .line 245
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->l()I

    move-result p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return v1

    .line 237
    :sswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->k()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    return v1

    .line 229
    :sswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->j()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz p1, :cond_5b

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 233
    return v1

    .line 221
    :sswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->i()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz p1, :cond_6f

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/p;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    return v1

    .line 213
    :sswitch_73
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->h()Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz p1, :cond_83

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/ai;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 217
    return v1

    .line 205
    :sswitch_87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->g()Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz p1, :cond_97

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 209
    return v1

    .line 197
    :sswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->f()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz p1, :cond_ab

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_ab
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 201
    return v1

    .line 189
    :sswitch_af
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->e()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz p1, :cond_bf

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_bf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    return v1

    .line 181
    :sswitch_c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->d()Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz p1, :cond_d3

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_d3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    return v1

    .line 173
    :sswitch_d7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->c()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz p1, :cond_e7

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/aa;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_e7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 177
    return v1

    .line 163
    :sswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a$a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz p1, :cond_ff

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_ff
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 169
    return v1

    .line 151
    :sswitch_103
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/a$a;->a(II)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz p1, :cond_11b

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_11b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 159
    return v1

    .line 141
    :sswitch_11f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/a$a;->a(I)I

    move-result p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v1

    .line 133
    :sswitch_131
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->b()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz p1, :cond_141

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    return v1

    .line 119
    :sswitch_145
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz p1, :cond_158

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15c

    .line 127
    :cond_158
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_15c
    return v1

    nop

    :sswitch_data_15e
    .sparse-switch
        0x1 -> :sswitch_145
        0x2 -> :sswitch_131
        0x3 -> :sswitch_11f
        0x4 -> :sswitch_103
        0x5 -> :sswitch_eb
        0x6 -> :sswitch_d7
        0x7 -> :sswitch_c3
        0x8 -> :sswitch_af
        0x9 -> :sswitch_9b
        0xa -> :sswitch_87
        0xb -> :sswitch_73
        0xc -> :sswitch_5f
        0xd -> :sswitch_4b
        0xe -> :sswitch_37
        0xf -> :sswitch_29
        0x10 -> :sswitch_11
        0x5f4e5446 -> :sswitch_d
    .end sparse-switch
.end method
