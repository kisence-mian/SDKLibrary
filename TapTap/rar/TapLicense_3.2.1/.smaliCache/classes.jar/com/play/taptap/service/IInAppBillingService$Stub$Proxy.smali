.class Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInAppBillingService.java"

# interfaces
.implements Lcom/play/taptap/service/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/play/taptap/service/IInAppBillingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/play/taptap/service/IInAppBillingService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 413
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "purchaseToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 673
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 674
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/play/taptap/service/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    return v3

    .line 676
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move v2, v3

    .line 680
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 682
    nop

    .line 683
    return v2

    .line 680
    .end local v2    # "_result":I
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 682
    throw v2
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 16
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "developerPayload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 583
    .local v2, "_status":Z
    if-nez v2, :cond_40

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 584
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/play/taptap/service/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_5b

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 584
    return-object v3

    .line 586
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52

    .line 588
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_5b

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_53

    .line 591
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_52
    const/4 v3, 0x0

    .line 595
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    nop

    .line 598
    return-object v3

    .line 595
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_5b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw v2
.end method

.method public getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 23
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "newSku"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "developerPayload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    .local p3, "oldSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 746
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 749
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_80

    .line 750
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7e

    .line 751
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7c

    .line 752
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7a

    .line 753
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_78

    .line 754
    move-object/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_76

    .line 755
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 757
    .local v0, "_status":Z
    if-nez v0, :cond_59

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 758
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/play/taptap/service/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_74

    .line 769
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    return-object v3

    .line 760
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 761
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6b

    .line 762
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_74

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_6c

    .line 765
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_6b
    const/4 v3, 0x0

    .line 769
    .end local v0    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_6c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    nop

    .line 772
    return-object v3

    .line 769
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_74
    move-exception v0

    goto :goto_8d

    :catchall_76
    move-exception v0

    goto :goto_8b

    :catchall_78
    move-exception v0

    goto :goto_89

    :catchall_7a
    move-exception v0

    goto :goto_87

    :catchall_7c
    move-exception v0

    goto :goto_85

    :catchall_7e
    move-exception v0

    goto :goto_83

    :catchall_80
    move-exception v0

    move/from16 v10, p1

    :goto_83
    move-object/from16 v11, p2

    :goto_85
    move-object/from16 v12, p3

    :goto_87
    move-object/from16 v13, p4

    :goto_89
    move-object/from16 v14, p5

    :goto_8b
    move-object/from16 v15, p6

    :goto_8d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 420
    const-string v0, "com.play.taptap.service.IInAppBillingService"

    return-object v0
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "continuationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 636
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 637
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/play/taptap/service/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_53

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    return-object v3

    .line 639
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    .line 641
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_53

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_4b

    .line 644
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_4a
    const/4 v3, 0x0

    .line 648
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_4b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    nop

    .line 651
    return-object v3

    .line 648
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_53
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    throw v2
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "skusBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x0

    if-eqz p4, :cond_21

    .line 516
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    .line 520
    :cond_21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :goto_24
    iget-object v3, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 523
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 524
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/play/taptap/service/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_5d

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    return-object v3

    .line 526
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    .line 528
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_5d

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_55

    .line 531
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_54
    const/4 v3, 0x0

    .line 535
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_55
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    nop

    .line 538
    return-object v3

    .line 535
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_5d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    throw v2
.end method

.method public isAppLicensed(ILjava/lang/String;ILcom/play/taptap/service/ICallback;)V
    .registers 10
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "wakeup"    # I
    .param p4, "callback"    # Lcom/play/taptap/service/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    if-eqz p4, :cond_1d

    invoke-interface {p4}, Lcom/play/taptap/service/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 470
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 471
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 472
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/play/taptap/service/IInAppBillingService;->isAppLicensed(ILjava/lang/String;ILcom/play/taptap/service/ICallback;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    return-void

    .line 475
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 478
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return-void

    .line 478
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v2
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 442
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 443
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/play/taptap/service/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    return v3

    .line 445
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move v2, v3

    .line 449
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    nop

    .line 452
    return v2

    .line 449
    .end local v2    # "_result":I
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw v2
.end method

.method public stub(ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "apiVersion"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.IInAppBillingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lcom/play/taptap/service/IInAppBillingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 699
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 700
    invoke-static {}, Lcom/play/taptap/service/IInAppBillingService$Stub;->getDefaultImpl()Lcom/play/taptap/service/IInAppBillingService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/play/taptap/service/IInAppBillingService;->stub(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    return v3

    .line 702
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move v2, v3

    .line 706
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    nop

    .line 709
    return v2

    .line 706
    .end local v2    # "_result":I
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    throw v2
.end method
