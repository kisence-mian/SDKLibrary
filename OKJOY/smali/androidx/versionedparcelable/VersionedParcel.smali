.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1492
    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1125
    packed-switch p1, :pswitch_data_58

    .line 1143
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_25
    return-object v0

    .line 1127
    :pswitch_26
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_25

    .line 1129
    :pswitch_2d
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1131
    :pswitch_33
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1133
    :pswitch_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1135
    :pswitch_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1137
    :pswitch_45
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1139
    :pswitch_4b
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    goto :goto_25

    .line 1141
    :pswitch_51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    .line 1125
    nop

    :pswitch_data_58
    .packed-switch -0x9
        :pswitch_26
        :pswitch_3
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
    .end packed-switch
.end method

.method private static findParcelClass(Landroidx/versionedparcelable/VersionedParcelable;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1480
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    invoke-static {v0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private static findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    const/4 v6, 0x0

    .line 1485
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "%s.%sParcelizer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1114
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 1115
    :cond_b
    return-object p0
.end method

.method private getType(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "t":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 906
    const/4 v0, 0x4

    .line 914
    :goto_5
    return v0

    .line 907
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    .line 908
    const/4 v0, 0x2

    goto :goto_5

    .line 909
    :cond_c
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v0, :cond_12

    .line 910
    const/4 v0, 0x1

    goto :goto_5

    .line 911
    :cond_12
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_18

    .line 912
    const/4 v0, 0x3

    goto :goto_5

    .line 913
    :cond_18
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1e

    .line 914
    const/4 v0, 0x5

    goto :goto_5

    .line 916
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be VersionedParcelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCollection(ILjava/util/Collection;)Ljava/util/Collection;
    .registers 6
    .param p1, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection",
            "<TT;>;>(ITS;)TS;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/Collection;, "TS;"
    const/4 v2, 0x0

    .line 1250
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1251
    .local v0, "n":I
    if-gez v0, :cond_9

    move-object p2, v2

    .line 1292
    .end local p2    # "list":Ljava/util/Collection;, "TS;"
    :cond_8
    :goto_8
    return-object p2

    .line 1254
    .restart local p2    # "list":Ljava/util/Collection;, "TS;"
    :cond_9
    if-eqz v0, :cond_8

    .line 1255
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1256
    .local v1, "type":I
    if-gez v0, :cond_13

    move-object p2, v2

    .line 1257
    goto :goto_8

    .line 1259
    :cond_13
    packed-switch v1, :pswitch_data_54

    goto :goto_8

    .line 1273
    :goto_17
    :pswitch_17
    if-lez v0, :cond_8

    .line 1274
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1261
    :goto_23
    :pswitch_23
    if-lez v0, :cond_8

    .line 1262
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1263
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1267
    :goto_2f
    :pswitch_2f
    if-lez v0, :cond_8

    .line 1268
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1269
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1279
    :goto_3b
    :pswitch_3b
    if-lez v0, :cond_8

    .line 1280
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1281
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    .line 1285
    :goto_47
    :pswitch_47
    if-lez v0, :cond_8

    .line 1286
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 1259
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_17
        :pswitch_2f
        :pswitch_3b
        :pswitch_23
        :pswitch_47
    .end packed-switch
.end method

.method private readException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1104
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private readExceptionCode()I
    .registers 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1100
    .local v0, "code":I
    return v0
.end method

.method protected static readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 8
    .param p0, "parcelCls"    # Ljava/lang/String;
    .param p1, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1438
    const/4 v2, 0x1

    :try_start_1
    const-class v3, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1439
    .local v0, "cls":Ljava/lang/Class;
    const-string v2, "read"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 1440
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_26} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_26} :catch_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_26} :catch_51

    return-object v2

    .line 1441
    .end local v0    # "cls":Ljava/lang/Class;
    :catch_27
    move-exception v1

    .line 1442
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1443
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v1

    .line 1444
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_40

    .line 1445
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1447
    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1448
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_48
    move-exception v1

    .line 1449
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1450
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_51
    move-exception v1

    .line 1451
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .registers 8
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 800
    if-nez p1, :cond_a

    .line 801
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 838
    :cond_9
    :goto_9
    return-void

    .line 805
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 806
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 807
    if-lez v0, :cond_9

    .line 808
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v1

    .line 809
    .local v1, "type":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 810
    packed-switch v1, :pswitch_data_8a

    goto :goto_9

    .line 822
    :pswitch_26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 823
    .local v2, "v":Ljava/lang/Object;, "TT;"
    check-cast v2, Landroidx/versionedparcelable/VersionedParcelable;

    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    goto :goto_2a

    .line 812
    :pswitch_3a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 813
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    check-cast v2, Ljava/lang/String;

    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    goto :goto_3e

    .line 817
    :pswitch_4e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 818
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    check-cast v2, Landroid/os/Parcelable;

    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_52

    .line 827
    :pswitch_62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 828
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    check-cast v2, Ljava/io/Serializable;

    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_66

    .line 832
    :pswitch_76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 833
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    check-cast v2, Landroid/os/IBinder;

    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_7a

    .line 810
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_4e
        :pswitch_62
        :pswitch_3a
        :pswitch_76
    .end packed-switch
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .registers 9
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 968
    if-nez p1, :cond_7

    .line 969
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 987
    :goto_6
    return-void

    .line 972
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 975
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 977
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 978
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 979
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 981
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 982
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2a
    move-exception v1

    .line 983
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 8
    .param p1, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :try_start_0
    invoke-static {p0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Landroidx/versionedparcelable/VersionedParcelable;)Ljava/lang/Class;

    move-result-object v0

    .line 1461
    .local v0, "cls":Ljava/lang/Class;
    const-string v2, "write"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 1462
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_26} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_26} :catch_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_26} :catch_51

    .line 1475
    return-void

    .line 1463
    .end local v0    # "cls":Ljava/lang/Class;
    :catch_27
    move-exception v1

    .line 1464
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1465
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_40

    .line 1467
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1469
    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1470
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_48
    move-exception v1

    .line 1471
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1472
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_51
    move-exception v1

    .line 1473
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 7
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 948
    .local v1, "name":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_8} :catch_11

    move-result-object v1

    .line 953
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 954
    return-void

    .line 949
    :catch_11
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a Parcelizer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 1317
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1318
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 1360
    :cond_7
    :goto_7
    return-object v3

    .line 1321
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1322
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v1, :cond_18

    .line 1323
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    .line 1324
    .local v2, "type":I
    if-ltz v1, :cond_7

    .line 1327
    packed-switch v2, :pswitch_data_5a

    .line 1360
    .end local v2    # "type":I
    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    .line 1329
    .restart local v2    # "type":I
    :goto_1d
    :pswitch_1d
    if-lez v1, :cond_18

    .line 1330
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1335
    :goto_29
    :pswitch_29
    if-lez v1, :cond_18

    .line 1336
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 1341
    :goto_35
    :pswitch_35
    if-lez v1, :cond_18

    .line 1342
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    .line 1347
    :goto_41
    :pswitch_41
    if-lez v1, :cond_18

    .line 1348
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 1353
    :goto_4d
    :pswitch_4d
    if-lez v1, :cond_18

    .line 1354
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 1327
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_29
        :pswitch_41
        :pswitch_1d
        :pswitch_4d
    .end packed-switch
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 1308
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1311
    .end local p1    # "def":[Ljava/lang/Object;, "[TT;"
    :goto_6
    return-object p1

    .restart local p1    # "def":[Ljava/lang/Object;, "[TT;"
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .registers 4
    .param p1, "def"    # Z
    .param p2, "fieldId"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 366
    .end local p1    # "def":Z
    :goto_6
    return p1

    .restart local p1    # "def":Z
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result p1

    goto :goto_6
.end method

.method protected readBooleanArray()[Z
    .registers 5

    .prologue
    .line 551
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 552
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 553
    const/4 v2, 0x0

    .line 559
    :cond_7
    return-object v2

    .line 555
    :cond_8
    new-array v2, v1, [Z

    .line 556
    .local v2, "val":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_7

    .line 557
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    :goto_14
    aput-boolean v3, v2, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 557
    :cond_19
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public readBooleanArray([ZI)[Z
    .registers 4
    .param p1, "def"    # [Z
    .param p2, "fieldId"    # I

    .prologue
    .line 542
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 545
    .end local p1    # "def":[Z
    :goto_6
    return-object p1

    .restart local p1    # "def":[Z
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "def"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .prologue
    .line 457
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 460
    .end local p1    # "def":Landroid/os/Bundle;
    :goto_6
    return-object p1

    .restart local p1    # "def":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_6
.end method

.method public readByte(BI)B
    .registers 4
    .param p1, "def"    # B
    .param p2, "fieldId"    # I

    .prologue
    .line 1151
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1154
    .end local p1    # "def":B
    :goto_6
    return p1

    .restart local p1    # "def":B
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte p1, v0

    goto :goto_6
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .registers 4
    .param p1, "def"    # [B
    .param p2, "fieldId"    # I

    .prologue
    .line 436
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 439
    .end local p1    # "def":[B
    :goto_6
    return-object p1

    .restart local p1    # "def":[B
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object p1

    goto :goto_6
.end method

.method public readCharArray([CI)[C
    .registers 7
    .param p1, "def"    # [C
    .param p2, "fieldId"    # I

    .prologue
    .line 580
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 591
    .end local p1    # "def":[C
    :goto_6
    return-object p1

    .line 583
    .restart local p1    # "def":[C
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "n":I
    if-gez v1, :cond_f

    .line 585
    const/4 p1, 0x0

    goto :goto_6

    .line 587
    :cond_f
    new-array v2, v1, [C

    .line 588
    .local v2, "val":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1e

    .line 589
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    move-object p1, v2

    .line 591
    goto :goto_6
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .registers 5
    .param p1, "def"    # D
    .param p3, "fieldId"    # I

    .prologue
    .line 405
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 408
    .end local p1    # "def":D
    :goto_6
    return-wide p1

    .restart local p1    # "def":D
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide p1

    goto :goto_6
.end method

.method protected readDoubleArray()[D
    .registers 7

    .prologue
    .line 759
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 760
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 761
    const/4 v2, 0x0

    .line 767
    :cond_7
    return-object v2

    .line 763
    :cond_8
    new-array v2, v1, [D

    .line 764
    .local v2, "val":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_7

    .line 765
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public readDoubleArray([DI)[D
    .registers 4
    .param p1, "def"    # [D
    .param p2, "fieldId"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 753
    .end local p1    # "def":[D
    :goto_6
    return-object p1

    .restart local p1    # "def":[D
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object p1

    goto :goto_6
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .registers 6
    .param p1, "def"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .prologue
    .line 1076
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1084
    .end local p1    # "def":Ljava/lang/Exception;
    :cond_6
    :goto_6
    return-object p1

    .line 1079
    .restart local p1    # "def":Ljava/lang/Exception;
    :cond_7
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    move-result v0

    .line 1080
    .local v0, "code":I
    if-eqz v0, :cond_6

    .line 1081
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .registers 4
    .param p1, "def"    # F
    .param p2, "fieldId"    # I

    .prologue
    .line 394
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 397
    .end local p1    # "def":F
    :goto_6
    return p1

    .restart local p1    # "def":F
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result p1

    goto :goto_6
.end method

.method protected readFloatArray()[F
    .registers 5

    .prologue
    .line 715
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 716
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 717
    const/4 v2, 0x0

    .line 723
    :cond_7
    return-object v2

    .line 719
    :cond_8
    new-array v2, v1, [F

    .line 720
    .local v2, "val":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_7

    .line 721
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public readFloatArray([FI)[F
    .registers 4
    .param p1, "def"    # [F
    .param p2, "fieldId"    # I

    .prologue
    .line 706
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 709
    .end local p1    # "def":[F
    :goto_6
    return-object p1

    .restart local p1    # "def":[F
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .registers 4
    .param p1, "def"    # I
    .param p2, "fieldId"    # I

    .prologue
    .line 373
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 376
    .end local p1    # "def":I
    :goto_6
    return p1

    .restart local p1    # "def":I
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result p1

    goto :goto_6
.end method

.method protected readIntArray()[I
    .registers 5

    .prologue
    .line 627
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 628
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 629
    const/4 v2, 0x0

    .line 635
    :cond_7
    return-object v2

    .line 631
    :cond_8
    new-array v2, v1, [I

    .line 632
    .local v2, "val":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_7

    .line 633
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public readIntArray([II)[I
    .registers 4
    .param p1, "def"    # [I
    .param p2, "fieldId"    # I

    .prologue
    .line 618
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 621
    .end local p1    # "def":[I
    :goto_6
    return-object p1

    .restart local p1    # "def":[I
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object p1

    goto :goto_6
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1246
    .end local p1    # "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_6
    return-object p1

    .restart local p1    # "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(ILjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object p1, v0

    goto :goto_6
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .registers 5
    .param p1, "def"    # J
    .param p3, "fieldId"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 386
    .end local p1    # "def":J
    :goto_6
    return-wide p1

    .restart local p1    # "def":J
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide p1

    goto :goto_6
.end method

.method protected readLongArray()[J
    .registers 7

    .prologue
    .line 671
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 672
    .local v1, "n":I
    if-gez v1, :cond_8

    .line 673
    const/4 v2, 0x0

    .line 679
    :cond_7
    return-object v2

    .line 675
    :cond_8
    new-array v2, v1, [J

    .line 676
    .local v2, "val":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_7

    .line 677
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public readLongArray([JI)[J
    .registers 4
    .param p1, "def"    # [J
    .param p2, "fieldId"    # I

    .prologue
    .line 662
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 665
    .end local p1    # "def":[J
    :goto_6
    return-object p1

    .restart local p1    # "def":[J
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "def":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 448
    .end local p1    # "def":Landroid/os/Parcelable;, "TT;"
    :goto_6
    return-object p1

    .restart local p1    # "def":Landroid/os/Parcelable;, "TT;"
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_6
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .registers 10

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1397
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 1402
    const/4 v6, 0x0

    .line 1420
    :goto_7
    return-object v6

    .line 1405
    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v5

    .line 1406
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1408
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_11
    new-instance v4, Landroidx/versionedparcelable/VersionedParcel$1;

    invoke-direct {v4, p0, v0}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    .line 1420
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1c} :catch_3d

    goto :goto_7

    .line 1421
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1d
    move-exception v2

    .line 1422
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1425
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3d
    move-exception v1

    .line 1426
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p1, "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1227
    .end local p1    # "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :goto_6
    return-object p1

    .restart local p1    # "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_7
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    invoke-direct {p0, p2, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(ILjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object p1, v0

    goto :goto_6
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .registers 6
    .param p1, "def"    # Landroid/util/Size;
    .param p2, "fieldId"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1170
    .end local p1    # "def":Landroid/util/Size;
    :goto_6
    return-object p1

    .line 1165
    .restart local p1    # "def":Landroid/util/Size;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1166
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1167
    .local v1, "width":I
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1168
    .local v0, "height":I
    new-instance p1, Landroid/util/Size;

    .end local p1    # "def":Landroid/util/Size;
    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_6

    .line 1170
    .end local v0    # "height":I
    .end local v1    # "width":I
    .restart local p1    # "def":Landroid/util/Size;
    :cond_1b
    const/4 p1, 0x0

    goto :goto_6
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .registers 6
    .param p1, "def"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 1178
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1186
    .end local p1    # "def":Landroid/util/SizeF;
    :goto_6
    return-object p1

    .line 1181
    .restart local p1    # "def":Landroid/util/SizeF;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1182
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v1

    .line 1183
    .local v1, "width":F
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    .line 1184
    .local v0, "height":F
    new-instance p1, Landroid/util/SizeF;

    .end local p1    # "def":Landroid/util/SizeF;
    invoke-direct {p1, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_6

    .line 1186
    .end local v0    # "height":F
    .end local v1    # "width":F
    .restart local p1    # "def":Landroid/util/SizeF;
    :cond_1b
    const/4 p1, 0x0

    goto :goto_6
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .registers 8
    .param p1, "def"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .prologue
    .line 1195
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1208
    .end local p1    # "def":Landroid/util/SparseBooleanArray;
    :goto_6
    return-object p1

    .line 1198
    .restart local p1    # "def":Landroid/util/SparseBooleanArray;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1199
    .local v1, "n":I
    if-gez v1, :cond_f

    .line 1200
    const/4 p1, 0x0

    goto :goto_6

    .line 1202
    :cond_f
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1203
    .local v2, "sa":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .line 1204
    .local v0, "i":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 1205
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    move-object p1, v2

    .line 1208
    goto :goto_6
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .prologue
    .line 415
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 418
    .end local p1    # "def":Ljava/lang/String;
    :goto_6
    return-object p1

    .restart local p1    # "def":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 4
    .param p1, "def"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 428
    .end local p1    # "def":Landroid/os/IBinder;
    :goto_6
    return-object p1

    .restart local p1    # "def":Landroid/os/IBinder;
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_6
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1384
    const/4 v1, 0x0

    .line 1386
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    goto :goto_7
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 1366
    .local p1, "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1369
    .end local p1    # "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :goto_6
    return-object p1

    .restart local p1    # "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .prologue
    .line 242
    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_7

    .line 859
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 902
    :cond_6
    :goto_6
    return-void

    .line 863
    :cond_7
    array-length v1, p1

    .line 864
    .local v1, "n":I
    const/4 v0, 0x0

    .line 865
    .local v0, "i":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 866
    if-lez v1, :cond_6

    .line 867
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v2

    .line 868
    .local v2, "type":I
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 869
    packed-switch v2, :pswitch_data_58

    goto :goto_6

    .line 883
    :goto_1c
    :pswitch_1c
    if-ge v0, v1, :cond_6

    .line 884
    aget-object v3, p1, v0

    check-cast v3, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 871
    :goto_28
    :pswitch_28
    if-ge v0, v1, :cond_6

    .line 872
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 877
    :goto_34
    :pswitch_34
    if-ge v0, v1, :cond_6

    .line 878
    aget-object v3, p1, v0

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 889
    :goto_40
    :pswitch_40
    if-ge v0, v1, :cond_6

    .line 890
    aget-object v3, p1, v0

    check-cast v3, Ljava/io/Serializable;

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 895
    :goto_4c
    :pswitch_4c
    if-ge v0, v1, :cond_6

    .line 896
    aget-object v3, p1, v0

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 869
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_34
        :pswitch_40
        :pswitch_28
        :pswitch_4c
    .end packed-switch
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 852
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .registers 3
    .param p1, "val"    # Z
    .param p2, "fieldId"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 268
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 269
    return-void
.end method

.method protected writeBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .prologue
    .line 528
    if-eqz p1, :cond_16

    .line 529
    array-length v1, p1

    .line 530
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1a

    .line 532
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 532
    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    .line 535
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_16
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 537
    :cond_1a
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .registers 3
    .param p1, "val"    # [Z
    .param p2, "fieldId"    # I

    .prologue
    .line 521
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 522
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    .line 523
    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 259
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method

.method public writeByte(BI)V
    .registers 3
    .param p1, "val"    # B
    .param p2, "fieldId"    # I

    .prologue
    .line 468
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 469
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 470
    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .registers 3
    .param p1, "b"    # [B
    .param p2, "fieldId"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 278
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    .line 279
    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "fieldId"    # I

    .prologue
    .line 289
    invoke-virtual {p0, p4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    .line 291
    return-void
.end method

.method public writeCharArray([CI)V
    .registers 6
    .param p1, "val"    # [C
    .param p2, "fieldId"    # I

    .prologue
    .line 565
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 566
    if-eqz p1, :cond_14

    .line 567
    array-length v1, p1

    .line 568
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_18

    .line 570
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 573
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_14
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 575
    :cond_18
    return-void
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .registers 5
    .param p1, "val"    # D
    .param p3, "fieldId"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 326
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 327
    return-void
.end method

.method protected writeDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .prologue
    .line 736
    if-eqz p1, :cond_11

    .line 737
    array-length v1, p1

    .line 738
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 740
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 743
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 745
    :cond_15
    return-void
.end method

.method public writeDoubleArray([DI)V
    .registers 3
    .param p1, "val"    # [D
    .param p2, "fieldId"    # I

    .prologue
    .line 729
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 730
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    .line 731
    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .prologue
    .line 1013
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1014
    if-nez p1, :cond_9

    .line 1015
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    .line 1053
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_8
    return-void

    .line 1018
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v0, 0x0

    .line 1019
    .local v0, "code":I
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2c

    .line 1020
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_2c

    .line 1023
    const/16 v0, -0x9

    .line 1039
    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1040
    if-nez v0, :cond_5c

    .line 1041
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_56

    .line 1042
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1024
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2c
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_32

    .line 1025
    const/4 v0, -0x1

    goto :goto_20

    .line 1026
    :cond_32
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_38

    .line 1027
    const/4 v0, -0x2

    goto :goto_20

    .line 1028
    :cond_38
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3e

    .line 1029
    const/4 v0, -0x3

    goto :goto_20

    .line 1030
    :cond_3e
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_44

    .line 1031
    const/4 v0, -0x4

    goto :goto_20

    .line 1032
    :cond_44
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4a

    .line 1033
    const/4 v0, -0x5

    goto :goto_20

    .line 1034
    :cond_4a
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_50

    .line 1035
    const/4 v0, -0x6

    goto :goto_20

    .line 1036
    :cond_50
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_20

    .line 1037
    const/4 v0, -0x7

    goto :goto_20

    .line 1044
    :cond_56
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1046
    :cond_5c
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1047
    packed-switch v0, :pswitch_data_6e

    goto :goto_8

    .line 1050
    :pswitch_67
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_8

    .line 1047
    nop

    :pswitch_data_6e
    .packed-switch -0x9
        :pswitch_67
    .end packed-switch
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .registers 3
    .param p1, "val"    # F
    .param p2, "fieldId"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 317
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 318
    return-void
.end method

.method protected writeFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .prologue
    .line 692
    if-eqz p1, :cond_11

    .line 693
    array-length v1, p1

    .line 694
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 696
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 699
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 701
    :cond_15
    return-void
.end method

.method public writeFloatArray([FI)V
    .registers 3
    .param p1, "val"    # [F
    .param p2, "fieldId"    # I

    .prologue
    .line 685
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 686
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    .line 687
    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .registers 3
    .param p1, "val"    # I
    .param p2, "fieldId"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 299
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 300
    return-void
.end method

.method protected writeIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .prologue
    .line 604
    if-eqz p1, :cond_11

    .line 605
    array-length v1, p1

    .line 606
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 608
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 611
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 613
    :cond_15
    return-void
.end method

.method public writeIntArray([II)V
    .registers 3
    .param p1, "val"    # [I
    .param p2, "fieldId"    # I

    .prologue
    .line 597
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 598
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    .line 599
    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 796
    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .registers 5
    .param p1, "val"    # J
    .param p3, "fieldId"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 308
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 309
    return-void
.end method

.method protected writeLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .prologue
    .line 648
    if-eqz p1, :cond_11

    .line 649
    array-length v1, p1

    .line 650
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_15

    .line 652
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 655
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 657
    :cond_15
    return-void
.end method

.method public writeLongArray([JI)V
    .registers 3
    .param p1, "val"    # [J
    .param p2, "fieldId"    # I

    .prologue
    .line 641
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 642
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    .line 643
    return-void
.end method

.method protected writeNoException()V
    .registers 2

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1064
    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "fieldId"    # I

    .prologue
    .line 355
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 356
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 357
    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .registers 3
    .param p1, "s"    # Ljava/io/Serializable;
    .param p2, "fieldId"    # I

    .prologue
    .line 963
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 964
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 965
    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "val":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 782
    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .registers 4
    .param p1, "val"    # Landroid/util/Size;
    .param p2, "fieldId"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 479
    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 480
    if-eqz p1, :cond_19

    .line 481
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 482
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 484
    :cond_19
    return-void

    .line 479
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .registers 4
    .param p1, "val"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 493
    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 494
    if-eqz p1, :cond_19

    .line 495
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 496
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 498
    :cond_19
    return-void

    .line 493
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .registers 6
    .param p1, "val"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .prologue
    .line 503
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 504
    if-nez p1, :cond_a

    .line 505
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 516
    :cond_9
    return-void

    .line 508
    :cond_a
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 509
    .local v1, "n":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_9

    .line 512
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 513
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .prologue
    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 344
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 345
    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;
    .param p2, "fieldId"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 250
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 251
    return-void
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 4
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .prologue
    .line 934
    if-nez p1, :cond_7

    .line 935
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 943
    :goto_6
    return-void

    .line 938
    :cond_7
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 940
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 941
    .local v0, "subParcel":Landroidx/versionedparcelable/VersionedParcel;
    invoke-static {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 942
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    goto :goto_6
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .registers 3
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p2, "fieldId"    # I

    .prologue
    .line 927
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 928
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 929
    return-void
.end method
