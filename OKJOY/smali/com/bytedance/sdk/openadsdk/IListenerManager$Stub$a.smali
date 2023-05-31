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


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    .line 197
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public broadcastDialogListener(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 354
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 358
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 361
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    return-void

    .line 361
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 388
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 392
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 395
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    return-void

    .line 395
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 316
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 327
    :catchall_30
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 266
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 273
    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 229
    :try_start_9
    const-string v3, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    if-eqz p3, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_31

    .line 239
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    return-void

    .line 239
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 338
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_2b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    .line 345
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    return-void

    .line 340
    :cond_2b
    const/4 v0, 0x0

    goto :goto_16

    .line 345
    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 250
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    return-void

    .line 252
    :cond_2a
    const/4 v0, 0x0

    goto :goto_16

    .line 257
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 372
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    if-eqz p2, :cond_2b

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 376
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    .line 379
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    return-void

    .line 374
    :cond_2b
    const/4 v0, 0x0

    goto :goto_16

    .line 379
    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 213
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 217
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    .line 220
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-void

    .line 215
    :cond_2a
    const/4 v0, 0x0

    goto :goto_16

    .line 220
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 284
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    .line 291
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    return-void

    .line 286
    :cond_2a
    const/4 v0, 0x0

    goto :goto_16

    .line 291
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 300
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 304
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-void

    .line 302
    :cond_2a
    const/4 v0, 0x0

    goto :goto_16

    .line 307
    :catchall_2c
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
