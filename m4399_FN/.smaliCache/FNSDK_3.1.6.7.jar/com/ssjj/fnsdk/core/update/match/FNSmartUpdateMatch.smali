.class public Lcom/ssjj/fnsdk/core/update/match/FNSmartUpdateMatch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apkType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getPatchApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public getSrcApkMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public processChannel(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method
