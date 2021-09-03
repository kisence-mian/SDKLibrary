.class public abstract Lcom/play/taptap/service/IInAppBillingService$Stub;
.super Landroid/os/Binder;
.source "IInAppBillingService.java"

# interfaces
.implements Lcom/play/taptap/service/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/play/taptap/service/IInAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.play.taptap.service.IInAppBillingService"

.field static final TRANSACTION_consumePurchase:I = 0x6

.field static final TRANSACTION_getBuyIntent:I = 0x4

.field static final TRANSACTION_getBuyIntentToReplaceSkus:I = 0x8

.field static final TRANSACTION_getPurchases:I = 0x5

.field static final TRANSACTION_getSkuDetails:I = 0x3

.field static final TRANSACTION_isAppLicensed:I = 0x2

.field static final TRANSACTION_isBillingSupported:I = 0x1

.field static final TRANSACTION_stub:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 214
    const-string v0, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {p0, p0, v0}, Lcom/play/taptap/service/IInAppBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/play/taptap/service/IInAppBillingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 222
    if-nez p0, :cond_4

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_4
    const-string v0, "com.play.taptap.service.IInAppBillingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 226
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/play/taptap/service/IInAppBillingService;

    if-eqz v1, :cond_14

    .line 227
    move-object v1, v0

    check-cast v1, Lcom/play/taptap/service/IInAppBillingService;

    return-object v1

    .line 229
    :cond_14
    new-instance v1, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;
    .registers 1

    .line 798
    sget-object v0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/IInAppBillingService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/play/taptap/service/IInAppBillingService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/play/taptap/service/IInAppBillingService;

    .line 788
    sget-object v0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/IInAppBillingService;

    if-nez v0, :cond_c

    .line 791
    if-eqz p0, :cond_a

    .line 792
    sput-object p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->sDefaultImpl:Lcom/play/taptap/service/IInAppBillingService;

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 789
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 233
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.play.taptap.service.IInAppBillingService"

    .line 238
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch p1, :sswitch_data_14a

    .line 403
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 242
    :sswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v12

    .line 377
    :sswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 381
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 385
    .local v15, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 387
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 389
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 390
    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 391
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v0, :cond_4c

    .line 393
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 397
    :cond_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    :goto_4f
    return v12

    .line 363
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/play/taptap/service/IInAppBillingService$Stub;->stub(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    return v12

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/play/taptap/service/IInAppBillingService$Stub;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 357
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    return v12

    .line 327
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_84
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 337
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v4, :cond_a7

    .line 339
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_aa

    .line 343
    :cond_a7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_aa
    return v12

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_ab
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 307
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 314
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 315
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v0, :cond_da

    .line 317
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_dd

    .line 321
    :cond_da
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    :goto_dd
    return v12

    .line 276
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :sswitch_de
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_fc

    .line 285
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg3":Landroid/os/Bundle;
    goto :goto_fd

    .line 288
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :cond_fc
    const/4 v3, 0x0

    .line 290
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_fd
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 291
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v4, :cond_10d

    .line 293
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_110

    .line 297
    :cond_10d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_110
    return v12

    .line 261
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_111
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/play/taptap/service/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/play/taptap/service/ICallback;

    move-result-object v3

    .line 270
    .local v3, "_arg3":Lcom/play/taptap/service/ICallback;
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/play/taptap/service/IInAppBillingService$Stub;->isAppLicensed(ILjava/lang/String;ILcom/play/taptap/service/ICallback;)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    return v12

    .line 247
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/play/taptap/service/ICallback;
    :sswitch_12f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/play/taptap/service/IInAppBillingService$Stub;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    return v12

    nop

    :sswitch_data_14a
    .sparse-switch
        0x1 -> :sswitch_12f
        0x2 -> :sswitch_111
        0x3 -> :sswitch_de
        0x4 -> :sswitch_ab
        0x5 -> :sswitch_84
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_50
        0x8 -> :sswitch_16
        0x5f4e5446 -> :sswitch_12
    .end sparse-switch
.end method
