.class public Lcom/huawei/android/hms/pps/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
.end method

.method private static native getTag()Ljava/lang/String;
.end method
