.class public Lcom/taptap/sdk/LoginSdkConfig;
.super Ljava/lang/Object;
.source "LoginSdkConfig.java"


# instance fields
.field public isPortrait:Z

.field public regionType:Lcom/taptap/sdk/RegionType;

.field public roundCorner:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 4
    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 6
    sget-object v0, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    iput-object v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 10
    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 12
    sget-object v0, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    iput-object v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    .line 18
    iput-boolean p1, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 19
    iput-boolean p2, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    return-void
.end method

.method public constructor <init>(ZZLcom/taptap/sdk/RegionType;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 23
    iput-boolean v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 25
    sget-object v0, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    iput-object v0, p0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    .line 36
    iput-boolean p1, p0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 37
    iput-boolean p2, p0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 38
    iput-object p3, p0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    return-void
.end method
