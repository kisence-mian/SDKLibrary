.class public Lcom/huawei/android/hms/pps/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native getTag()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
