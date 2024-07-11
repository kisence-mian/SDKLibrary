.class public Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRunningInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static format:Ljava/text/SimpleDateFormat; = null

.field public static granularity:J = 0x0L

.field private static final serialVersionUID:J = 0x615a474ccdc5b72eL


# instance fields
.field private lastRunningTime:J

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->granularity:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd:HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    return-void
.end method

.method public static createInstance(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setPackageName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static samePackageTimeTo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    :cond_a
    invoke-virtual {p0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getLastRunningTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getLastRunningTime()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method


# virtual methods
.method public cloneNewOne()Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setName(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setLastRunningTime(J)V

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public compareTo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)I
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getLastRunningTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_13

    const/4 v0, 0x0

    goto :goto_17

    :cond_13
    if-lez p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->compareTo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_37

    :cond_12
    check-cast p1, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    sget-wide v1, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->granularity:J

    iget-wide v3, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    div-long/2addr v3, v1

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getLastRunningTime()J

    move-result-wide v5

    div-long/2addr v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_23

    return v0

    :cond_23
    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v0

    :cond_2e
    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_37
    :goto_37
    return v0
.end method

.method public formatTime(J)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->format:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedLastRunningTime()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->getLastRunningTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastRunningTime()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    sget-wide v0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->granularity:J

    iget-wide v2, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long v1, v2, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setLastRunningTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    const-string v3, "lastRunningTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppRunningInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunningTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->lastRunningTime:J

    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
