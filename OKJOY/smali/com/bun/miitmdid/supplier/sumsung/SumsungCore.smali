.class public Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static DBG:Z = false
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static SAMSUNGTAG:Ljava/lang/String; = "Samsung_DeviceIdService"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "SumsungCore library"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private mCallerCallBack:Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private mDeviceidInterface:Lcom/samsung/android/deviceidservice/IDeviceIdService;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    if-eqz p1, :cond_4a

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    new-instance v0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;

    invoke-direct {v0, p0}, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;-><init>(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)V

    iput-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->TAG:Ljava/lang/String;

    const-string v1, "bindService Successful!"

    invoke-static {v0, v1}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->TAG:Ljava/lang/String;

    const-string v1, "bindService Failed!"

    invoke-static {v0, v1}, Lcom/bun/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;->mCallerCallBack:Lcom/bun/miitmdid/c/e/a;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/bun/miitmdid/c/e/a;->b()V

    goto :goto_33

    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native synthetic access$002(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;Lcom/samsung/android/deviceidservice/IDeviceIdService;)Lcom/samsung/android/deviceidservice/IDeviceIdService;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic access$100(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic access$200()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutdown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
