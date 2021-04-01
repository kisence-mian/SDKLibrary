.class public abstract Lcom/ss/android/socialbase/downloader/g/a$a;
.super Landroid/os/Binder;
.source "DownloadAidlTask.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/g/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/g/a$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/g/a;
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
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/g/a;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ss/android/socialbase/downloader/g/a;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/a$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/g/a$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_16c

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_27

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, p3, v1}, Lcom/ss/android/socialbase/downloader/g/c;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_25
    move v0, v1

    .line 57
    goto :goto_9

    .line 55
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 61
    :sswitch_2c
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->b()Lcom/ss/android/socialbase/downloader/d/e;

    move-result-object v2

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_3e

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 65
    goto :goto_9

    .line 69
    :sswitch_43
    const-string v0, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a$a;->a(I)I

    move-result v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 75
    goto :goto_9

    .line 79
    :sswitch_58
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    invoke-virtual {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a$a;->a(II)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_72

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 87
    goto :goto_9

    .line 91
    :sswitch_77
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/g/a$a;->b(I)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_8d

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 97
    goto/16 :goto_9

    .line 101
    :sswitch_93
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->c()Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v2

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_a5

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/y;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 105
    goto/16 :goto_9

    .line 109
    :sswitch_ab
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->d()Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v2

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v2, :cond_bd

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/ab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_bd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 113
    goto/16 :goto_9

    .line 117
    :sswitch_c3
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->e()Lcom/ss/android/socialbase/downloader/d/h;

    move-result-object v2

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_d5

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 121
    goto/16 :goto_9

    .line 125
    :sswitch_db
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->f()Lcom/ss/android/socialbase/downloader/d/f;

    move-result-object v2

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_ed

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_ed
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 129
    goto/16 :goto_9

    .line 133
    :sswitch_f3
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->g()Lcom/ss/android/socialbase/downloader/d/s;

    move-result-object v2

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_105

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/s;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 137
    goto/16 :goto_9

    .line 141
    :sswitch_10b
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->h()Lcom/ss/android/socialbase/downloader/d/ad;

    move-result-object v2

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v2, :cond_11d

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/ad;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_11d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 145
    goto/16 :goto_9

    .line 149
    :sswitch_123
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->i()Lcom/ss/android/socialbase/downloader/d/n;

    move-result-object v2

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_135

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/n;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 153
    goto/16 :goto_9

    .line 157
    :sswitch_13b
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->j()Lcom/ss/android/socialbase/downloader/d/j;

    move-result-object v2

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_14d

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_14d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 161
    goto/16 :goto_9

    .line 165
    :sswitch_153
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/a$a;->k()Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v2

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v2, :cond_165

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 169
    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_43
        0x4 -> :sswitch_58
        0x5 -> :sswitch_77
        0x6 -> :sswitch_93
        0x7 -> :sswitch_ab
        0x8 -> :sswitch_c3
        0x9 -> :sswitch_db
        0xa -> :sswitch_f3
        0xb -> :sswitch_10b
        0xc -> :sswitch_123
        0xd -> :sswitch_13b
        0xe -> :sswitch_153
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
