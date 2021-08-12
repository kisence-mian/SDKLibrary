.class Lcom/ss/android/socialbase/downloader/model/a$a$a;
.super Ljava/lang/Object;
.source "DownloadAidlTask.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/model/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/model/a;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    .line 273
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 336
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 337
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/model/a;->a(I)I

    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    return p1

    .line 339
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3e

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    nop

    .line 346
    return p1

    .line 343
    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 358
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 359
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/model/a;->a(II)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    return-object p1

    .line 361
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_45

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    nop

    .line 368
    return-object p1

    .line 365
    :catchall_45
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 290
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 291
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_47

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    return-object v2

    .line 293
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 295
    sget-object v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_47

    goto :goto_3f

    .line 298
    :cond_3e
    const/4 v2, 0x0

    .line 302
    :goto_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-object v2

    .line 302
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/depend/e;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 315
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 316
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->b()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-object v2

    .line 318
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/e$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3f

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    nop

    .line 325
    return-object v2

    .line 322
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 379
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 380
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-object p1

    .line 382
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_42

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-object p1

    .line 386
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c()Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 397
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 399
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 400
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->c()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    return-object v2

    .line 402
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3f

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 408
    nop

    .line 409
    return-object v2

    .line 406
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/depend/l;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 597
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 600
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 601
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/model/a;->c(I)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    return-object p1

    .line 603
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/l$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_43

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return-object p1

    .line 607
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public d()Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 419
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 420
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->d()Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    return-object v2

    .line 422
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3f

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    nop

    .line 429
    return-object v2

    .line 426
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public e()Lcom/ss/android/socialbase/downloader/depend/h;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 437
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 439
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 440
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->e()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    return-object v2

    .line 442
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/h$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    nop

    .line 449
    return-object v2

    .line 446
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public f()Lcom/ss/android/socialbase/downloader/depend/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 459
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 460
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->f()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    return-object v2

    .line 462
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/f$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    nop

    .line 469
    return-object v2

    .line 466
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public g()Lcom/ss/android/socialbase/downloader/depend/v;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 477
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 479
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 480
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->g()Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    return-object v2

    .line 482
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/v$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    nop

    .line 489
    return-object v2

    .line 486
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public h()Lcom/ss/android/socialbase/downloader/depend/ai;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 499
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 500
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->h()Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    return-object v2

    .line 502
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/ai$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    nop

    .line 509
    return-object v2

    .line 506
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public i()Lcom/ss/android/socialbase/downloader/depend/p;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 517
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 519
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 520
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->i()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    return-object v2

    .line 522
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-object v2

    .line 526
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public j()Lcom/ss/android/socialbase/downloader/depend/j;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 537
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 539
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 540
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->j()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    return-object v2

    .line 542
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/j$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    nop

    .line 549
    return-object v2

    .line 546
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public k()Lcom/ss/android/socialbase/downloader/depend/g;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 557
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 559
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 560
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->k()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    return-object v2

    .line 562
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/depend/g$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    nop

    .line 569
    return-object v2

    .line 566
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public l()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 577
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.model.DownloadAidlTask"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/a$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 579
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 580
    invoke-static {}, Lcom/ss/android/socialbase/downloader/model/a$a;->m()Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/model/a;->l()I

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 580
    return v2

    .line 582
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 588
    nop

    .line 589
    return v2

    .line 586
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
