.class public final Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hms/pps/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private final limitAdTrackingEnabled:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;->advertisingId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/huawei/android/hms/pps/AdvertisingIdClient$Info;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public final native getId()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public final native isLimitAdTrackingEnabled()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
