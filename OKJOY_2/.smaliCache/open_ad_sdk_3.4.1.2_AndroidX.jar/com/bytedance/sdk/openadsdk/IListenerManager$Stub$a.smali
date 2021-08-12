.class Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;
.super Ljava/lang/Object;
.source "IListenerManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IListenerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/IListenerManager;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    .line 251
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public broadcastDialogListener(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 446
    if-nez v2, :cond_32

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 447
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->broadcastDialogListener(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    return-void

    .line 450
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw p1
.end method

.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 484
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 488
    if-nez v2, :cond_32

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 489
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    return-void

    .line 492
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw p1
.end method

.method public executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 396
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    move-wide/from16 v8, p5

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_61

    .line 403
    move-object v12, p0

    :try_start_2b
    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 404
    if-nez v3, :cond_54

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 405
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v3

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_5f

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    return-void

    .line 408
    :cond_54
    :try_start_54
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5f

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    nop

    .line 414
    return-void

    .line 411
    :catchall_5f
    move-exception v0

    goto :goto_63

    :catchall_61
    move-exception v0

    move-object v12, p0

    :goto_63
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v0
.end method

.method public executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 334
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 338
    if-nez v2, :cond_31

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 339
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-void

    .line 342
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw p1
.end method

.method public executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 287
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    const/4 v3, 0x0

    if-eqz p3, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_68

    .line 295
    move-object v11, p0

    :try_start_33
    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-interface {v4, v6, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 296
    if-nez v3, :cond_5b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 297
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_66

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    return-void

    .line 300
    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_66

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    nop

    .line 306
    return-void

    .line 303
    :catchall_66
    move-exception v0

    goto :goto_6a

    :catchall_68
    move-exception v0

    move-object v11, p0

    :goto_6a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw v0
.end method

.method public registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 422
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 425
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 426
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 427
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    return-void

    .line 430
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    nop

    .line 436
    return-void

    .line 433
    :catchall_45
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw p1
.end method

.method public registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 314
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 317
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 318
    if-nez v2, :cond_39

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 319
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    return-void

    .line 322
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw p1
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 464
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 467
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 468
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 469
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-void

    .line 472
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    nop

    .line 478
    return-void

    .line 475
    :catchall_45
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    throw p1
.end method

.method public registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 267
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 270
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 271
    if-nez v2, :cond_39

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 272
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 275
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p1
.end method

.method public registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 359
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 360
    if-nez v2, :cond_39

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 361
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 362
    return-void

    .line 364
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    nop

    .line 370
    return-void

    .line 367
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw p1
.end method

.method public unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 379
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 380
    if-nez v2, :cond_39

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 381
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    return-void

    .line 384
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    throw p1
.end method
