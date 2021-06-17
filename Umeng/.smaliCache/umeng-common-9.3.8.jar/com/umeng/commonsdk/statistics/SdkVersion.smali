.class public Lcom/umeng/commonsdk/statistics/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# static fields
.field public static final MINI_VERSION:Ljava/lang/String; = "1"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "1.0.0"

.field public static SDK_TYPE:I = 0x0

.field public static final SDK_VERSION:Ljava/lang/String; = "9.3.8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
