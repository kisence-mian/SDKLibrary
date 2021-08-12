.class Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;
.super Ljava/lang/Object;
.source "ITTAppDownloadListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    .line 195
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 235
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    move-wide v4, p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    move-wide v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_51

    .line 240
    move-object v10, p0

    :try_start_20
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-interface {v3, v8, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 241
    if-nez v3, :cond_44

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_4f

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    return-void

    .line 245
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    nop

    .line 251
    return-void

    .line 248
    :catchall_4f
    move-exception v0

    goto :goto_53

    :catchall_51
    move-exception v0

    move-object v10, p0

    :goto_53
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw v0
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 294
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 295
    move-wide v4, p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    move-wide v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_51

    .line 299
    move-object v10, p0

    :try_start_20
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v8, 0x4

    const/4 v11, 0x0

    invoke-interface {v3, v8, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 300
    if-nez v3, :cond_44

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_4f

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    return-void

    .line 304
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :catchall_4f
    move-exception v0

    goto :goto_53

    :catchall_51
    move-exception v0

    move-object v10, p0

    :goto_53
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    throw v0
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 322
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 327
    if-nez v2, :cond_34

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 328
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    return-void

    .line 331
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw p1
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 265
    :try_start_8
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    move-wide v4, p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    move-wide v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_51

    .line 270
    move-object v10, p0

    :try_start_20
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v8, 0x3

    const/4 v11, 0x0

    invoke-interface {v3, v8, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 271
    if-nez v3, :cond_44

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 272
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_4f

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 275
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catchall_4f
    move-exception v0

    goto :goto_53

    :catchall_51
    move-exception v0

    move-object v10, p0

    :goto_53
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v0
.end method

.method public onIdle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 209
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 211
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onIdle()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 215
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    nop

    .line 221
    return-void

    .line 218
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw v2
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 348
    :try_start_8
    const-string v2, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 352
    if-nez v2, :cond_31

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 353
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    return-void

    .line 356
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw p1
.end method
