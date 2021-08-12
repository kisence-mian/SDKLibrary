.class public final Lcom/yxcorp/kuaishou/addfp/android/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/yxcorp/kuaishou/addfp/android/b/f;


# direct methods
.method public constructor <init>(Lcom/yxcorp/kuaishou/addfp/android/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/b/h;->b:Lcom/yxcorp/kuaishou/addfp/android/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "iphonesubinfo"

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/b/h;->b:Lcom/yxcorp/kuaishou/addfp/android/b/f;

    invoke-static {v3, p2}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Lcom/yxcorp/kuaishou/addfp/android/b/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v1

    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_32

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_32
    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/b/h;->b:Lcom/yxcorp/kuaishou/addfp/android/b/f;

    invoke-static {v3, p2, p1, v0, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Lcom/yxcorp/kuaishou/addfp/android/b/f;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    if-eqz p1, :cond_44

    :try_start_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_3d} :catch_42

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :catch_42
    move-exception p1

    return-object v1

    :cond_44
    :goto_44
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    const-string v0, "TRANSACTION_getDeviceId"

    const-string v1, "iphonesubinfo"

    invoke-direct {p0, v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    const-string v0, "TRANSACTION_getIccSerialNumber"

    const-string v1, "iphonesubinfo"

    invoke-direct {p0, v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
